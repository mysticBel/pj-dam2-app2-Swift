//
//  DetalleViewController.swift
//  AppTable
//
//  Created by Maribel on 28/09/23.
//

import UIKit

class DetalleViewController: UIViewController {

    //var
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblCodigo: UILabel!
    @IBOutlet weak var lblNombres: UILabel!
    @IBOutlet weak var lblApellidos: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblSueldo: UILabel!
    
    // declarar  variable de la estructura Cliente
    var bean:Cliente!  // ! significa que sera inicializado despues
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCodigo.text="Codigo : "+String(bean.codigo)
        /*lblCodigo.text="Codigo : "+String(bean.nombre)
        lblCodigo.text="Codigo : "+String(bean.apellido)
        lblCodigo.text="Codigo : "+String(bean.edad)
        lblCodigo.text="Codigo : "+String(bean.sueldo)
        imgFoto.image = UIImage(named: bean.foto)*/

        //
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
