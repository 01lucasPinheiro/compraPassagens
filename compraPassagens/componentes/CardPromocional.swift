//
//  CardPromocional.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.
//
import SwiftUI

struct CardPromocional: View {

    let imagePlaceholderColor = Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50)
    
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: - Imagem / Cabeçalho (Parte Superior)
            // No futuro, substitua o Rectangle() por um Image("foto_toquio").resizable().scaledToFill()
//            Rectangle()
//                .fill(Color.bege)
//                .frame(height: 140)
//                .clipped()
            
            // MARK: - Informações e Preço (Parte Inferior)
            VStack(spacing: 12) {
                
                // Título
                Text("Tóquio")
                    .font(.custom("Baloo 2", size: 16).weight(.bold))
                    .foregroundColor(Color.azulMedio)
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [1.5]))
                .foregroundColor(Color.azulMedio)
                .frame(height: 1)

                
                // Datas de Ida e Volta
                HStack {
                    // Ida
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Ida")
                            .font(.custom("Baloo 2", size: 10).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        Text("Qui, 23/04")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                    }
                    //banana
                    Spacer()
                    
                    // Tracinho central
                    Rectangle()
                        .fill(Color.azulMedio)
                        .frame(width: 16, height: 1)
                    
                    Spacer()
                    
                    // Volta
                    VStack(alignment: .trailing, spacing: 2) {
                        Text("Volta")
                            .font(.custom("Baloo 2", size: 10).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        Text("Qui, 30/04")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                
                //Spacer(minLength: 10)
                
                Image("imagem2").resizable().scaledToFill()
                
                // Preço
                VStack(spacing: 2) {
                    Text("Ida e volta a partir de")
                        .font(.custom("Inter", size: 10))
                        .foregroundColor(Color.azulMedio)
                    
                    Text("BRL 6.000")
                        .font(.custom("Baloo 2", size: 16).weight(.medium))
                        .foregroundColor(Color.azulMedio)
                }
            }
            .padding(16)
            // A altura restante do card
            .frame(height: 187)
            .background(Color.white)
        }
        // Tamanho total do card
        .frame(width: 186, height: 327)
        .background(Color.white)
        .cornerRadius(10)
        // Opcional: Adiciona uma sombra sutil para destacar o card do fundo
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
        CardPromocional()
    }
}
