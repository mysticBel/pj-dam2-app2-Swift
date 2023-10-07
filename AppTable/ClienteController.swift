//
//  ClienteController.swift
//  AppTable
//
//  Created by Maribel on 7/10/23.
//

import UIKit

class ClienteController: NSObject {
    // REGISTRAR CLIENTE
    func addCliente(bean:Cliente){
        // 1. Crear objeto de clase AppDelegate
        let delegate=UIApplication.shared.delegate as! AppDelegate //accedemos al archivo appdelegate , lo casteamos
        // 2. Accedemos a  la bd
        let contextoBD=delegate.persistentContainer.viewContext  //viewcontext da el acceso
        // 3. Indicar con que entidad(tabla) vamos a trabajar
        let table=ClienteEntity(context: contextoBD)
        // 4. Asignar valores a los atributos del objeto "table" con
        // los atributos del parametro bean
        table.codigo = Int16(bean.codigo);  //lo castemos porque en el bean es Int, pero en la entity es Int 16
        table.nombre = bean.nombre;
        table.apellido = bean.apellido;
        table.edad = Int16(bean.edad);
        table.sueldo = bean.sueldo;
        
        // 5.  Grabar (con excepcion try-catch)
        do{
           // guardamos en el contexto
          try contextoBD.save()
            
        } catch(let error as NSError){
            //para saber donde esta fallando
            print(error.localizedDescription);
        }
    }
    
    //LISTAR CLIENTES
    func listCliente(){
    
    }
}
