//
//  DadosVoo.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 13/04/26.
//

import SwiftUI
import Observation

@Observable
class UserSession{
    var destino: String = "teste"
    var origem: String = ""
    
    var voos: [String: (horario: String, preco: Double, destino: String)] = [
        "GRU": ("14:30", 1250.99, "Tókio"),
        "DOH": ("18:00", 1500.99, "Congonhas"),
        "BRA": ("12:00", 1300.99, "Rio de Janeiro"),
        "FRA": ("16:00", 1400.99, "Paris")
    ]
}
