//
//  Card.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 06/04/26.
//

import SwiftUI

struct Card: View {
    
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 0) {
                // MARK: - Informações do Voo (Parte Superior)
                HStack(alignment: .center) {
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 0, height: 110)
                    
                    
                    // Origem (Esquerda)
                    VStack(alignment: .leading, spacing: 4) {
                        
//                        Path { path in  LINHA TRACEJADA
//                                path.move(to: CGPoint(x: 0, y: 0))
//                                path.addLine(to: CGPoint(x: 300, y: 0)) // 80 é a largura da linha
//                            }
//                        .stroke(Color.azulMedio, style: StrokeStyle(lineWidth: 0.5, dash: [2, 2]))
//                            .frame(width: 80, height: 1)
//                            .padding(.vertical, 20)
                        
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
                        
                        Text(Padroes.horario1)
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("Sáb. 19/09")
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
                      
                    }

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
                        
                        Text(Padroes.horario2)
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        
                        
                        Text("Dom. 20/09")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                .background(Color.bege)
                
                // MARK: - Barra de Preço e Botão (Parte Inferior)
                HStack {
                    Text("BRL 5.844,00")
                        .font(.custom("Baloo 2", size: 16).weight(.medium))
                        .foregroundColor(Color.bege)
                    
                    Spacer()
                    
                    Button(action: {
                        // Ação do botão de escolha
                    }) {
                        Text("Escolher")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 8)
                            .background(Color.verde)
                            .cornerRadius(50)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(Color.azulEscuro)
            }
            .cornerRadius(10)
            // Definindo uma largura máxima para o card não esticar em iPads/Telas grandes
            .frame(maxWidth: 350)
            // Adicionando uma leve sombra para destaque (opcional)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
        }
    }
    
}

#Preview {
    NavigationStack {
        Card()
    }
    
}
