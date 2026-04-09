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
                    Text("Faça login ou cadastrese")
                    Text("para continuar")
                }.padding(40)
                
                VStack(){
                    HStack{
                        Spacer()
                        NavigationLink(destination: TelaFiltro()){
                            Text("Login")
                                .foregroundStyle(Color.black)
                                .frame(maxWidth: 99, maxHeight: 32)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        Spacer()
                        NavigationLink(destination: telaCadastro()){
                            Text("Cadastre-se")
                                .foregroundStyle(Color.black)
                                .frame(maxWidth: 99, maxHeight: 32)
                                .background(Color.blue.opacity(0.6))
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                }
                VStack{
                    CustomInputField(label: "NOME", placeholder: "Insira seu nome completo", text: $nomeCompleto)
                    CustomInputField(label: "E-MAIL", placeholder: "seuemail@gmail.com", text: $email)
                    CustomInputField(label: "TELEFONE", placeholder: "00 00000-0000", text: $telefone)
                    CustomInputField(label: "SENHA", placeholder: "Crie uma senha", text: $telefone)
                    
                    
                    
                    
                }.padding(20)
                VStack{
                    Text("Avançar")
                        .foregroundColor(.white) // Garante que o texto não fique no azul padrão de links
                        .frame(width: 179, height: 34)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            Spacer()
                }
            }
    }
}


#Preview {
    telaCadastro()
}
