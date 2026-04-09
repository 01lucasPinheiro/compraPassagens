//
//  telaCompra.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 30/03/26.
//
import SwiftUI

struct TelaCompra: View {
    @State private var destino = ""
    var body: some View {
        NavigationStack {
            
            ScrollView(.vertical, showsIndicators: true) {
                
                ScrollView(.vertical, showsIndicators: false) {
                    
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
                            }
                                VStack{
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack(spacing: 20) {
                                            CardPromocional(Imagem: "imgTokio" ,DataIda: "Qui, 23/04", DataVolta: "Qui, 30/04", Preco: "6.000", Destino: "Tóquio")
                                            
                                            CardPromocional(Imagem: "imgDisney" ,DataIda: "Dom, 24/05", DataVolta: "Ter, 09/06", Preco: "1.500", Destino: "Disney Orlando")
                                            
                                            CardPromocional(Imagem: "imgBali" ,DataIda: "Qui, 02/04", DataVolta: "Qui, 15/04", Preco: "8.800", Destino: "Bali")
                                            
                                            CardPromocional(Imagem: "imgGenebra" ,DataIda: "Dom, 25/03", DataVolta: "Dom, 07/07", Preco: "5.200", Destino: "Genebra")
                                            
                                            CardPromocional(Imagem: "imgLisboa" ,DataIda: "Sab, 26/05", DataVolta: "Sex, 06/06", Preco: "4.500", Destino: "Lisboa")
                                            
                                        }
                                    }
                                    .scrollTargetLayout()
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 350)
                                }
                                
                            
                            .scrollTargetBehavior(.viewAligned)
                            .contentMargins(.horizontal, 10, for: .scrollContent)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    TelaCompra()
}
