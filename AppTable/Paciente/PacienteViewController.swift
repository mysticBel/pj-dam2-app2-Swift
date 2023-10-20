//
//  PacienteViewController.swift
//  AppTable
//
//  Created by Maribel on 20/10/23.
//

import UIKit

class PacienteViewController: UIViewController {

    // para la tabla en la vista
    var listaPacientes:[Paciente] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarPacientes()
        // Do any additional setup after loading the view.
    }
    

    // Despues de crear la struct , creamos la funcion api que llama los alumnos
    func cargarPacientes(){
        let URLAPI="https://alura-es-cursos.github.io/api-pacientes/pacientes.json"
        let url = URL(string:URLAPI)
        
    
        let tarea = URLSession.shared.dataTask(with: url!){
            //variable que almacene el json : data , y respuesta : 200 ok y error
            data, response, error in
            do{
                if error == nil{
                    let pacientes = try JSONDecoder().decode([Paciente].self, from: data!)
                    //trayendo datos al arreglo
                    self.listaPacientes = pacientes
                    print(pacientes)
                }
            }catch{
                print(error.localizedDescription)
            }
        }
        
        
        // iniciar tarea
        tarea.resume()
    }
 


}
