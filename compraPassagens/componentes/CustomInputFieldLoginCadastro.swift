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
                    .font(.system(size: 12, weight: .bold))
                Spacer()
            }
            TextField(placeholder, text: $text)
        }
        .padding()
        .frame(maxWidth: 300, maxHeight: 60)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue, lineWidth: 1)
        )
    }
}
