//
//  LibroCollectionViewController.swift
//  AppTable
//
//  Created by Maribel on 11/10/23.
//

import UIKit

class LibroCollectionViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    // declarando variable collection view
    @IBOutlet weak var cvLibros: UICollectionView!
    //
    var libroList : [Libro] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //cargar datos de libros (datasource:origen de datos)
        fillDataLibroList()
        cvLibros.dataSource=self //self quiere decir que los metodos de DataSource se encuentran en la misma clase osea aqui.
        // para que mejore aspecto de imagenes
        cvLibros.delegate = self;
        // Permitir el desplazamiento
        cvLibros.isPagingEnabled = true;
    }
    
    // metodos del UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return libroList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Crear objeto de la clase ItemCollectionViewCell
        let celda=cvLibros.dequeueReusableCell(withReuseIdentifier: "LibtoItem", for: indexPath) as! LibroItemCollectionViewCell
        celda.imgFoto.image=UIImage(named: libroList[indexPath.row].foto)
        celda.lblTitulo.text=libroList[indexPath.row].titulo
        //
        return celda
    }
    
    // funcion para llenar datos de libros
    func fillDataLibroList(){
           libroList.append(Libro(codigo: 1, titulo: "Libro 1", precio: 25.6, cantidad: 30, foto: "harry1"));
           libroList.append(Libro(codigo: 2, titulo: "Libro 2", precio: 15.6, cantidad: 10, foto: "harry2"));
           libroList.append(Libro(codigo: 3, titulo: "Libro 3", precio: 35.6, cantidad: 20, foto: "harry3"));
           libroList.append(Libro(codigo: 4, titulo: "Libro 4", precio: 25.6, cantidad: 40, foto: "harry4"));
           libroList.append(Libro(codigo: 5, titulo: "Libro 5", precio: 15.6, cantidad: 10, foto: "harry5"));
           libroList.append(Libro(codigo: 6, titulo: "Libro 6", precio: 35.6, cantidad: 20, foto: "harry6"));
           libroList.append(Libro(codigo: 7, titulo: "Libro 7", precio: 25.6, cantidad: 30, foto: "harry7"));
       }
    
    // metodo sizeforItemAt del protocolo UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 150);
    }
  
}
