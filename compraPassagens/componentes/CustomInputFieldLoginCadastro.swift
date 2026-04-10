//
//  CustomInputFieldLoginCadastro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 09/04/26.
//
import SwiftUI

struct CustomInputField: View {
    let label: String
    let placeholder: String
    @Binding var text: String // Permite que o valor seja alterado de fora

    var body: some View {
        VStack {
            HStack {
                Text(label)
                    .font(Font.custom("Baloo2-Medium", size: 16))
                    .foregroundStyle(Color.azulMedio)
                Spacer()
            }
            TextField(placeholder, text: $text)
                .font(Font.custom("Inter-Regular", size: 16))
                .foregroundStyle(Color.azulEscuro)
        }
        .padding(20)
        .frame(maxHeight: 90)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.azulEscuro, lineWidth: 1)
        )
    }
}

