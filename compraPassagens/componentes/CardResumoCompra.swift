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
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("Tais Emily Lucas")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Companhia (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Companhia")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
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
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text(Padroes.nomeCid1)
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Destino")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text(Padroes.nomeCid2)
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Terceira Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Data ida
                        
                        
                        Text("Data de ida")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("Sáb. 19 set.")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Duração (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Duração")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("29h 15m")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Quarta Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Ticket
                        
                        
                        Text("Ticket")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("EL-177")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Classe (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Classe")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text(Padroes.classeCard1)
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
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

