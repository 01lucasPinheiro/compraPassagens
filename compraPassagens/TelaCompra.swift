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
                ZStack {
                    //VsStack principal engloba todo projeto
                    VStack(spacing: 5) {
                        
                        //Header
                        
                        VStack (spacing: -10){
                            CardLogo()
                            
                            HStack {
                                Text("Para onde vamos voar ?")
                                    .font(Font.custom("Baloo2-Medium", size: 20))
                                    .foregroundColor(Color.azulMedio)
                                    .padding()
                                Spacer()
                            }
                            VStack { //Campo de Busca
                                HStack(spacing: 10) {
                                    
                                    TextField("Destino", text: $destino)
                                        .font(Font.custom("Inter", size: 16))
                                        .foregroundColor(Color.azulEscuro)
                                    NavigationLink(destination: TelaFiltro()) {
                                        Image(systemName: "magnifyingglass")
                                            .font(.title)
                                            .foregroundColor(Color.azulEscuro)
                                    }
                                    
                                }
                                
                            }
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.azulEscuro)
                            )
                            .padding()
                        }
                        .padding()
                        
                        //Roteiro prontos
                        VStack(spacing: -20){
                            HStack {
                                Text("Roteiros prontos")
                                    .font(Font.custom("Baloo2-Medium", size: 20))
                                    .foregroundStyle(Color.branco)
                                    .padding(.top, 15)

                                Spacer()
                            }
                            .padding(.horizontal, 30)
                            .padding(.top)
                            
                            
                            //HStack {
                            VStack{
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack(spacing:15) {
                                        CardRoteiroPronto(imagem: "lagoinha", destino: "Lagoinha")
                                        CardRoteiroPronto(imagem: "cancun", destino: "Cancun")
                                        CardRoteiroPronto(imagem: "italia", destino: "Italia")
                                        CardRoteiroPronto(imagem: "franca", destino: "França")
                                                                                
                                        //CardRoteiroPronto(imagem: "imagem1")
                                        
                                    }.padding(30)
                                }
                                .scrollTargetLayout()
                                .frame(maxWidth: .infinity)

                            }
                        }
                        .background(Color.laranja)
                        
                        
                        
                        
                        //Promocoes carrosel
                        VStack {
                            HStack {
                                Text("Promoções")
                                    .font(Font.custom( "Baloo2-Medium", size: 20))
                                    .foregroundStyle(Color.azulMedio)
                                    .padding(.top, 20)
                                Spacer()
                            }.padding(.horizontal,30)
                        }
                        
                        VStack{
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 20) {
                                    CardPromocional(Imagem: "imgTokio" ,DataIda: "Qui, 23/04", DataVolta: "Qui, 30/04", Preco: "6.000", Destino: "Tóquio")
                                    
                                    CardPromocional(Imagem: "imgDisney" ,DataIda: "Dom, 24/05", DataVolta: "Ter, 09/06", Preco: "1.500", Destino: "Disney Orlando")
                                    
                                    CardPromocional(Imagem: "imgBali" ,DataIda: "Qui, 02/04", DataVolta: "Qui, 15/04", Preco: "8.800", Destino: "Bali")
                                    
                                    CardPromocional(Imagem: "imgGenebra" ,DataIda: "Dom, 25/03", DataVolta: "Dom, 07/07", Preco: "5.200", Destino: "Genebra")
                                    
                                    CardPromocional(Imagem: "imgLisboa" ,DataIda: "Sab, 26/05", DataVolta: "Sex, 06/06", Preco: "4.500", Destino: "Lisboa")
                                    
                                }.padding(20)
                            }
                            .scrollTargetLayout()
                            .frame(height: 380)
                        }
                        
                        .scrollTargetBehavior(.viewAligned)
                        .contentMargins(.horizontal, 10, for: .scrollContent)
                        
                        VStack{
                            Text("Fique por dentro das experiências dos outros Viajantes!")
                            .font(Font.custom("Baloo2-Medium", size: 13))
                            .foregroundStyle(Color.azulMedio)

                            cardBlog(imagem: "ushuaia",titulo: "Ushuaia é incrível!", texto: "A cidade de Ushuaia é umas das queridinhas quando se fala em frio...")
                            cardBlog(imagem: "jericoacoara", titulo: "Jericoacoara ou Maragogi?", texto: "Muitas pessoas não sabem, mas é possível conhecer...")
                            cardBlog(imagem: "gramado", titulo: "5 razões para ir a Gramado", texto: "Ao subirmos a serra já nos deparamos com a sua rica vegetação...")
                            
                        }
                        .padding(.top,15)
                    }
                }
            }
        }
    }
}


#Preview {
    TelaCompra()
}
