//
//  telaCompra.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 30/03/26.
//
import SwiftUI

struct TelaCompra: View {
    @State private var destino = ""
    let items = ["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: true) {
                ZStack {
                   // Color.white.ignoresSafeArea()
                    
                    VStack(spacing: 10) {
                        
                        //Header
                        VStack {
                            HStack {
                                Text("Para onde vamos voar ?")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.blue)
                                    .padding()
                                Spacer()
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.9))
                        
                        //Campo de Busca
                        VStack {
                            HStack(spacing: 10) {
                                
                                TextField("Destino", text: $destino)
                                NavigationLink(destination: TelaFiltro()) {
                                    Image(systemName: "magnifyingglass")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                
                            }
                            
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.7)
                        )
                        .padding()
                        
                        //Roteiro prontos
                        VStack {
                            HStack {
                                Text("Roteiros prontos")
                                .font(.headline)
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack {
                                Spacer()
                                Image("imagem1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .background(Color.red.opacity(0.5))
                                    .cornerRadius(10)
                                
                                Spacer()
                                
                                Image("imagem2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                                Spacer()
                            }.padding(.vertical)
                        }
                        
                        //Promocoes carrosel
                        VStack {
                            HStack {
                                Text("Promoções")
                                    //.font(.headline)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 20) {
                                    ForEach(items, id: \.self) { item in
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.blue)
                                            .frame(width: 186, height: 300)
                                            .overlay(
                                                Text(item)
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                            )
                                            .padding(.vertical)
                                    }
                                }
                            }
                            .scrollTargetLayout()
                        }
                       .scrollTargetBehavior(.viewAligned)
                       .contentMargins(.horizontal, 10, for: .scrollContent)
                    }
                }
            }
        }
    }
}
#Preview {
    TelaCompra()
}
