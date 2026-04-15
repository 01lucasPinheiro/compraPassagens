//
//  CardPromocional.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.
//
import SwiftUI

struct CardPromocional: View {
    
    let imagePlaceholderColor = Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50)
    let Imagem: String
    let DataIda: String
    let DataVolta: String
    let Preco: String
    let Destino: String
    

    var body: some View {
        VStack(spacing: 0) {
            
            VStack(spacing: 12) {
                
                // Título
                Text(Destino)
                    .font(.custom("Baloo2-Medium", size: 16))
                    .foregroundColor(Color.azulMedio)
                    .padding(.top, 5)
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [1.5]))
                    .foregroundColor(Color.azulMedio)
                    .frame(height: 1)
                
                
                // Datas de Ida e Volta
                HStack {
                    // Ida
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Ida")
                            .font(.custom("Baloo2-Medium", size: 14))
                            .foregroundColor(Color.azulMedio)
                        Text(DataIda)
                            .font(.custom("Inter", size: 10))
                            .foregroundColor(Color.azulEscuro)
                    }
                    Spacer()
                    
                    // Tracinho central
                    Rectangle()
                        .fill(Color.azulMedio)
                        .frame(width: 16, height: 1)
                    
                    Spacer()
                    
                    // Volta
                    VStack(alignment: .trailing, spacing: 2) {
                        Text("Volta")
                            .font(.custom("Baloo2-Medium", size: 14))
                            .foregroundColor(Color.azulMedio)
                        Text(DataVolta)
                            .font(.custom("Inter", size: 10))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                
                    Image(Imagem).resizable().scaledToFill()
                    
                    // Preço
                    VStack(spacing: 2) {
                        Text("Ida e volta a partir de")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("BRL \(Preco)")
                            .font(.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                    }
                }
                .padding(16)
                .frame(height: 187)
            }
            // Tamanho total do card
            .frame(width: 186, height: 340)
            .background(Color.branco)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        }
    }


#Preview {
    ZStack {
        Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
        CardPromocional(Imagem: "", DataIda: "", DataVolta: "", Preco: "", Destino: "")
    }
}
