//
//  ViewController.swift
//  AppTable
//
//  Created by Maribel on 27/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    //arreglo de estructura
    var listaClientes:[Cliente]=[]
    //
    var posCliente = -1 //para el tableView
    
    @IBOutlet weak var tvClientes: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //indicamos que la tabla trabaja con origen de datos (self es como this)
        tvClientes.dataSource = self
        tvClientes.delegate = self
        //llamamos el metodo
        llenarClientes()
        tvClientes.rowHeight = 150
    }


    @IBAction func btnNuevoCliente(_ sender: UIButton) {
        
        
        
    }
    
    //metodo
    func llenarClientes(){
        listaClientes.append(Cliente(codigo: 1, nombre: "Luis", apellido: "Soto", edad: 20, sueldo: 2500, foto: "persona1"))
        listaClientes.append(Cliente(codigo: 2, nombre: "Pedro", apellido: "Soto", edad: 23, sueldo: 3000, foto: "persona2"))
        
    }
    
    // metodos del delegate UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaClientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // acceder al identificador "celda" (TableViewCell)
        // y haremos un casteo
        let vista = tvClientes.dequeueReusableCell(withIdentifier: "celda") as! ItemTableViewCell
        
        //acceder a los atributos
        vista.lblCodigo.text =  String(listaClientes[indexPath.row].codigo)
        vista.lblNombres.text =  String(listaClientes[indexPath.row].nombre)
        vista.imgFoto.image = UIImage(named: listaClientes[indexPath.row].foto)
        
        return vista
    }
    
    // metodo de UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        posCliente=indexPath.row
        //llamar al segue "detalle"
        performSegue(withIdentifier: "detalle", sender: self)
    }
    
    //metodo para enviar datos a la otra pantalla (prepare)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Creamos objeto de la clase DetalleViewController
        let destino=segue.destination as! DetalleViewController
        destino.bean=listaClientes[posCliente]
    }
}

