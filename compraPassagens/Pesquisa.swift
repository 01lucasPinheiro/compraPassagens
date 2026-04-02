//
//  pesquisa.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//
import SwiftUI

struct Pesquisa: View {
    
    var body: some View {
        NavigationStack {
            
            
            VStack(spacing: 20) {
                
                Spacer()
                
                Text("tela de pesquisa")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
            }
        }
    }
}
#Preview {
    NavigationStack {
        Pesquisa()
    }
    
}
