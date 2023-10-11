//
//  DetalleViewController.swift
//  AppTable
//
//  Created by Maribel on 28/09/23.
//

import UIKit

class DetalleViewController: UIViewController {

    //var
    
    
    @IBOutlet weak var txtCodigo: UITextField!
    @IBOutlet weak var txtNombres: UITextField!
    @IBOutlet weak var txtApellidos: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtSueldo: UITextField!
    
    // declarar Variable de la estructura Cliente (declarar no nulo "!")
    var bean:ClienteEntity!  // ! significa que sera inicializado despues
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*lblCodigo.text="Codigo : "+String(bean.codigo)
        lblCodigo.text="Codigo : "+String(bean.nombre)
        lblCodigo.text="Codigo : "+String(bean.apellido)
        lblCodigo.text="Codigo : "+String(bean.edad)
        lblCodigo.text="Codigo : "+String(bean.sueldo)
        imgFoto.image = UIImage(named: bean.foto)*/

        // impresion en las cajas textfield de vista Detalles :
        // Imprimir valores que se encuentra en el objeto
        txtCodigo.text=String(bean.codigo)
        txtNombres.text=bean.nombre
        txtApellidos.text=bean.apellido
        txtEdad.text=String(bean.edad)
        txtSueldo.text=String(bean.sueldo)
    }
    

    @IBAction func btnActualizar(_ sender: UIButton) {
        // Actualizar los valores de los atributos del objeto "bean"
              var edad : Int16
              var nom, ape: String
              var sue: Double
              edad = Int16(txtEdad.text ?? "0") ?? 0
              nom = txtNombres.text ?? ""
              ape = txtApellidos.text ?? ""
              sue = Double(txtSueldo.text ?? "") ?? 0
              
              bean.edad = edad
              bean.nombre = nom
              bean.apellido = ape
              bean.sueldo = sue
              
        //invocar metodo actualizar cliente desde el ClienteController
              ClienteController().updateCliente(bean: bean);
              print("Datos Actualizados con èxito!")
    }
    

    @IBAction func btnEliminar(_ sender: UIButton) {
            // Crear ventana alerta "alert"
             let alert = UIAlertController(
                 title: "SISTEMA",
                 message: "Estas seguro de eliminar?",
                 preferredStyle: .alert)
                 // Boton Aceptar
                 let buttonAcept = UIAlertAction(
                     title: "Aceptar", style: .default,
                     handler: {
                         // accion de eliminar desde el controller
                         action in ClienteController().deleteCliente(bean: self.bean)
                     })
                     // Agregar accion a la alerta
                     alert.addAction(buttonAcept)
                 // Boton Cancelar y accion
                 let buttonCancel = UIAlertAction(
                    title: "Cancelar", style: .cancel)
                    // Agregar accion a la alerta
                    alert.addAction(buttonCancel)
             // Mostrar la alerta
             present(alert, animated: true)
        
    }
}
