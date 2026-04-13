//
//  compraPassagensApp.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 30/03/26.
//

import SwiftUI

@main
struct compraPassagensApp: App {
    @State private var dados = DadosVoo()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dados)
        }
    }
}
