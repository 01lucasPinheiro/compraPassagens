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
                    Label("Home", systemImage: "house")
            }
            // ABA 2

            Text("Segunda Tela")
            .tabItem {
                Label("Config", systemImage: "gear")
            }
        }
    }
}

#Preview {
        ContentView()

    }

