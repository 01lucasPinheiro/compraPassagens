//
//  CardResumoCompra.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 09/04/26.
//
import SwiftUI

struct CardResumoCompra: View {
    var body: some View {

        ZStack{
            VStack(spacing: 0) {
                
                HStack(alignment: .top) { //Primeira linha
                    
                    // Passageiro (Esquerda)
                    VStack(alignment: .leading, spacing: 4) {
                        
                        
                        Text("Passageiro")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("Tais Emily Lucas")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Companhia (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Companhia")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Image(systemName: "airplane.circle.fill") // Substitua pela sua imagem
                            .resizable()
                            .scaledToFit()
                            .frame(height: 24)
                        
                        
                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 10)
                .padding(.top, 10)
                
                HStack{ //Segunda Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Origem
                        
                        
                        Text("Origem")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(Padroes.nomeCid1)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Destino")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(Padroes.nomeCid2)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Terceira Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Data ida
                        
                        
                        Text("Data de ida")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("Sáb. 19 set.")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Duração (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Duração")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("29h 15m")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Quarta Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Ticket
                        
                        
                        Text("Ticket")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("EL-177")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Classe (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Classe")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(Padroes.classeCard1)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .padding(.bottom, 10)
                
            }.frame(maxWidth: 350) //VStack
                
            }.background(Color.bege) //ZStack
             .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
             .cornerRadius(10)
        }
    }

#Preview {
    CardResumoCompra()
}

