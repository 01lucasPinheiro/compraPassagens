//
//  Card.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 06/04/26.
//

import SwiftUI

struct Card: View {
    
    var body: some View {
        
        
        ZStack{
            VStack(spacing: 0) {
                
                VStack{
                    VStack{ //LOGO companhia
                        HStack(alignment: .center) {
                            Image(systemName: "airplane.circle.fill") // Substitua pela sua imagem
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                                .foregroundColor(Color.gray)}}.padding(.top,15)
                    
                    HStack{ // 2. Linha Tracejada
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 0.7, dash: [2]))
                            .frame(height: 1)
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 2)
                            .padding(.horizontal, 16)}
                }
                
                
                
                HStack(alignment: .top) { //Inicio de informações
                    
                    // Origem (Esquerda)
                    VStack(alignment: .leading, spacing: 2) {
                        
                        Text(Padroes.abrevAero1) //Abreviação
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            
                        
                        Text(Padroes.nomeCid1) //Cidade
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.bottom, 5)
                                                
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(Padroes.horarioCard1) //Horario
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.top, 5)
                        
                        Text(Padroes.diaCard1) //Dia
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                        
                    }
                    
                    Spacer()
                    
                    // Duração
                    VStack(spacing: 10) {
                        Text("Duração\n26h")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                            .multilineTextAlignment(.center)
                        
                    }.padding(.top, 40)
                     .frame(height: 70)
                    
                    Spacer()
                    
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 2) {
                        
                        Text(Padroes.abrevAero2) //Abreviação
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            
                        
                        Text(Padroes.nomeCid2) //Cidade
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.bottom, 5)
                                                
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(Padroes.horarioCard2) //Horario
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.top, 5)
                        
                        
                        Text(Padroes.diaCard2) //Dia
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                
                // Botão
                HStack {
                    Text(Padroes.precoCard1)
                        .font(Font.custom("Baloo2-Medium", size: 12))
                        .foregroundColor(Color.bege)
                    
                    Spacer()
                    
                    NavigationLink(destination: ResumoCompra()) {
                        Button(action: {
                            // Ação do botão de escolha
                        }) {
                            NavigationLink(destination: ResumoCompra()) {
                                Text("Escolher")
                                    .font(Font.custom("Baloo2-Medium", size: 12))
                                    .foregroundColor(Color.azulEscuro)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 3)
                                    .background(Color.verde)
                                    .cornerRadius(50)
                            }
                        }
                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(Color.azulEscuro)
            }
            
            .frame(maxWidth: 350)
            
        }.background(Color.bege)
         .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
         .cornerRadius(10)
    }
    
}

#Preview {
    Card()
}
