//
//  pesquisa.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//
import SwiftUI

struct Pesquisa: View {
    @State private var origem: String = ""
    @State private var destino: String = ""
    var body: some View {
        VStack(spacing: 0) {

            VStack(spacing:  10) {
                VStack(spacing: 10) {
                    VStack{
                        TextField("Origem", text: $origem)
                            .cornerRadius(10)
                        Divider()
                        TextField("Destino", text: $destino)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 0.7)
                    )
                    
                    HStack{
                        Text("Classe").opacity(0.5)
                        Spacer()
                        Text("Data").opacity(0.5)
                        Spacer()
                        Text("passageiros").opacity(0.5)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.7)
                        )
                    
                }
                .padding()
                .background(Color.blue.opacity(0.05))

                
                ScrollView(.vertical, showsIndicators: true) {
                    LazyVStack {
                        ForEach(0..<5) { i in
                            Card()
                                .padding(5)
                        }
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}
#Preview {
    Pesquisa()
}
