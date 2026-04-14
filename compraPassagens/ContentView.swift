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
            
            Text("Segunda Tela")
                .tabItem {
                    Image("iconGostei")
                        .background(Color.red.opacity(1))
                        .foregroundColor(Color.red)// nome do asset
                    
                    Text(Padroes.homeString)
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color.azulClaro)
                }
        }
    }
}

#Preview {
    ContentView()
    
}

