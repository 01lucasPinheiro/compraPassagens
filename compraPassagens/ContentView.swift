//
//  ContentView.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 30/03/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView() {
            // ABA 1
            TelaCompra()
                .tabItem {
                    Image("iconHome") // nome do asset
                    Text(Padroes.homeString)
                        .font(Font.custom("Inter", size: 10))
                }
            // ABA 2
            
            Text("Tela gostei")
                .tabItem {
                    Image("iconFavoritos")
                        .background(Color.red.opacity(1))
                        .foregroundColor(Color.red)// nome do asset
                    
                    Text(Padroes.likeString)
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color.azulClaro)
                }
            Text("Tela Passagens")
                .tabItem {
                    Image("iconRoteiro")
                        .background(Color.red.opacity(1))
                        .foregroundColor(Color.red)// nome do asset
                    
                    Text(Padroes.passagensString)
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color.azulClaro)
                }
            Text("Tela Perfil")
                .tabItem {
                    Image("iconPerfil")
                        .background(Color.red.opacity(1))
                        .foregroundColor(Color.red)// nome do asset
                    
                    Text(Padroes.perfilString)
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color.azulClaro)
                }
        }.tint(Color.azulEscuro)
    }
}

#Preview {
    ContentView()
    
}

