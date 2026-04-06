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
            
            // Cores extraídas do seu código original
            let backgroundColor = Color(red: 0.97, green: 0.96, blue: 0.92)
            let darkBlue = Color(red: 0.09, green: 0.20, blue: 0.39)
            let lightBlue = Color(red: 0.15, green: 0.30, blue: 0.59)
            let accentGreen = Color(red: 0.80, green: 0.84, blue: 0.16)
            
            
            VStack(spacing: 0) {
                // MARK: - Informações do Voo (Parte Superior)
                HStack(alignment: .center) {
                    
                    // Origem (Esquerda)
                    VStack(alignment: .leading, spacing: 4) {
                        Text("São Paulo")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("GRU")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("09:55")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(lightBlue)
                        
                        Text("Sáb. 19/09")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(darkBlue)
                    }
                    
                    Spacer()
                    
                    // Duração e Linha (Centro)
                    VStack(spacing: 8) {
                        Text("Duração\n26h")
                            .font(.custom("Inter", size: 10))
                            .foregroundColor(darkBlue)
                            .multilineTextAlignment(.center)
                        
                        // Substituindo os vários retângulos por uma única linha simples
                        Rectangle()
                            .fill(lightBlue)
                            .frame(height: 1)
                            .frame(maxWidth: 80)
                    }
                    
                    Spacer()
                    
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        Text("Tóquio")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(darkBlue)
                        
                        Text("HND")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(lightBlue)
                        
                        Text("23:55")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(lightBlue)
                        
                        Text("Dom. 20/09")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(darkBlue)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                .background(backgroundColor)
                
                // MARK: - Barra de Preço e Botão (Parte Inferior)
                HStack {
                    Text("BRL 5.844,00")
                        .font(.custom("Baloo 2", size: 16).weight(.medium))
                        .foregroundColor(backgroundColor)
                    
                    Spacer()
                    
                    Button(action: {
                        // Ação do botão de escolha
                    }) {
                        Text("Escolher")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(darkBlue)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 8)
                            .background(accentGreen)
                            .cornerRadius(50)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(darkBlue)
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
