//
//  Paciente.swift
//  AppTable
//
//  Created by Maribel on 20/10/23.
//

import UIKit

struct Paciente: Codable  {
    var nombre:String
    var peso: Int
    var altura: Double
    var gordura: Int
    var imc: Double
}
