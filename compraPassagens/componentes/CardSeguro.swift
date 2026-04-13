//
//  CardSeguro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 10/04/26.
//

import SwiftUI

struct CardSeguro: View {
    // 1. Definimos uma propriedade para receber a lista de benefícios
    let titulo: String
    let beneficios: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Cabeçalho
            VStack(alignment: .center, spacing: 8) {
                Text(titulo)
                    .font(.headline)
                    .foregroundColor(.azulEscuro)
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.7, dash: [2]))
                    .frame(height: 1)
                    .foregroundColor(Color.azulEscuro)
            }
            
            // 2. Lista de Benefícios Dinâmica
            VStack(alignment: .leading, spacing: 8) {
                ForEach(beneficios, id: \.self) { beneficio in
                    HStack(alignment: .top, spacing: 5) {
                        Text("•") // Marcador visual
                        Text(beneficio)
                            .font(.footnote)
                            .fixedSize(horizontal: false, vertical: true) //quebra de linha
                    }
                }
            }
            
            Spacer()
            Text("Escolher")
                .font(Font.custom("Baloo2-Medium", size: 16))
                .frame(maxWidth:150)
                .padding(5)
                .background(Color.azulMedio)
                .foregroundColor(Color.bege)
                .cornerRadius(50)
        }
        .padding(20)
        .frame(width: 197, height: 297)
        .background(Color.branco.opacity(0.5)) // Exemplo com opacidade
        .cornerRadius(10)
    }
}


#Preview {
    CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                        "Cobertura contra roubo",
                                        "Guincho ilimitado",
                                        "Proteção de vidros"])
}
