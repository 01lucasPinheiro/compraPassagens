//
//  telaCadastro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 09/04/26.
//

import SwiftUI

struct telaCadastro: View {
    @State private var password: String = ""
    @State private var nomeCompleto: String = ""
    @State private var email: String = ""
    @State private var telefone: String = ""
    
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                VStack{
                    Text("Cadastre-se para continuar")
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundStyle(Color.azulMedio)
                }.padding(20)
                
                
                VStack(spacing: 20){
                    CustomInputField(label: "NOME", placeholder: "Insira seu nome completo", text: $nomeCompleto)
                    CustomInputField(label: "E-MAIL", placeholder: "seuemail@gmail.com", text: $email)
                    CustomInputField(label: "TELEFONE", placeholder: "00 00000-0000", text: $telefone)
                    CustomInputField(label: "SENHA", placeholder: "Crie uma senha", text: $telefone)
                    
                    
                    
                    
                }.padding(30)
                VStack{
                    Text("Avançar")
                    .font(Font.custom("Baloo2-Medium", size: 16))
                        .foregroundColor(.white) // texto não fique no azul padrão de links
                        .frame(width: 179, height: 32)
                        .background(Color.azulMedio)
                        .cornerRadius(50)
                }
            Spacer()
                }
            }
    }
}


#Preview {
    telaCadastro()
}
