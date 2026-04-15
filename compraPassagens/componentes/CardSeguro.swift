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
    let preco: String
    @State public var selecionado: Bool = false
    var corDeFundo: Color {
        if selecionado {
            return Color.laranja
        }
        return Color.azulMedio
    }
    var textoBotao: String {
        if selecionado {
            return "Selecionado"
        }
        return "Escolher"
    }
    
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
            VStack(alignment: .leading, spacing: 2) {
                ForEach(beneficios, id: \.self) { beneficio in
                        HStack(spacing: 5) {
                            if beneficios.count == 1 {
                                Text(beneficio)
                                    .font(Font.custom("Inter", size: 12))
                                    .fixedSize(horizontal: false, vertical: true)
                            }else{
                                Text("•") // Marcador visual
                                Text(beneficio)
                                    .font(Font.custom("Inter", size: 12))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                    }
                }
            }
            Spacer()
            VStack(alignment: .leading){
                Text("+BRL \(preco)")
                    Text("Por dia")
                        .font(Font.custom("Baloo2-Medium", size: 11))
                        .fixedSize(horizontal: false, vertical: true)
            }
            Button(action: {
                self.selecionado.toggle()
            }) {
                Text(textoBotao) // Usa a variável de texto
                    .font(Font.custom("Baloo2-Medium", size: 16))
                    .frame(maxWidth: 150)
                    .padding(5)
                    .background(corDeFundo) // Usa a variável de cor
                    .foregroundColor(Color.bege)
                    .cornerRadius(50)
            }
            
        .buttonStyle(PlainButtonStyle())        }
        .padding(20)
        .frame(width: 197, height: 350)
        .background(Color.branco.opacity(0.5)) // Exemplo com opacidade
        .cornerRadius(10)
        
    }
}


#Preview {
    CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                 "Cobertura contra roubo",
                                                 "Guincho ilimitado",
                                                 "Proteção de vidros",], preco: "00,00")
}
