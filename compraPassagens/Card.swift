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
                    VStack{
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
                
                
                
                HStack(alignment: .top) {
                    
                    // Origem (Esquerda)
                    VStack(alignment: .leading, spacing: 4) {
                        
                        
                        Text(Padroes.nomeCid1)
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(Padroes.abrevAero1)
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 5)
                        
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(Padroes.horarioCard1)
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        
                        Text(Padroes.diaCard1)
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                    }
                    
                    Spacer()
                    
                    // Duração e Linha (Centro)
                    VStack(spacing: 10) {
                        Text("Duração\n26h")
                            .font(.custom("Inter", size: 10))
                            .foregroundColor(Color.azulEscuro)
                            .multilineTextAlignment(.center)
                        
                    }.padding(.top, 40)
                        .frame(height: 70)
                    
                    Spacer()
                    
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text(Padroes.nomeCid2)
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(Padroes.abrevAero2)
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 5)
                        
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(Padroes.horarioCard2)
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        
                        
                        Text(Padroes.diaCard2)
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                
                // MARK: - Barra de Preço e Botão (Parte Inferior)
                HStack {
                    Text(Padroes.precoCard1)
                        .font(.custom("Baloo 2", size: 16).weight(.medium))
                        .foregroundColor(Color.bege)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: ResumoCompra()) {
                        Button(action: {
                            // Ação do botão de escolha
                        }) {
                            NavigationLink(destination: ResumoCompra()) {
                                Text("Escolher")
                                    .font(.custom("Baloo 2", size: 12).weight(.medium))
                                    .foregroundColor(Color.azulEscuro)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 8)
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
            
            // Definindo uma largura máxima para o card não esticar em iPads/Telas grandes
            .frame(maxWidth: 350)
            // Adicionando uma leve sombra para destaque (opcional)
            
        }.background(Color.bege)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
            .cornerRadius(10)
    }
        
    
    
}

#Preview {
    Card()
}
