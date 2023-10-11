//
//  NuevoClienteViewController.swift
//  AppTable
//
//  Created by Maribel on 5/10/23.
//

import UIKit

class NuevoClienteViewController: UIViewController {

    // declaramos las variables textfield del form Registrar Cliente
    @IBOutlet weak var txtCodigo: UITextField!
    @IBOutlet weak var txtNOmbres: UITextField!
    @IBOutlet weak var txtApellidos: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtSueldo: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //evento boton grabar cliente
    @IBAction func BtnGrabar(_ sender: UIButton) {
        var cod, edad:Int
        var nom, ape:String
        var sue:Double
        //nulos y enteros
        cod=Int(txtCodigo.text ?? "0") ?? 0
        edad=Int(txtEdad.text ?? "0") ?? 0
        nom=txtNOmbres.text ?? ""
        ape=txtApellidos.text ?? ""
        sue=Double(txtSueldo.text ?? "0") ?? 0
        
        //crear variable de la estructura Cliente
        let data=Cliente(codigo: cod, nombre: nom, apellido: ape, edad: edad, sueldo: sue, foto: "")
        //invocar al metodo registrarcliente (addCliente)
        ClienteController().addCliente(bean: data)
        //
        print("Correcto")
    }
}
