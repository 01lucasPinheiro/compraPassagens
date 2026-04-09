//
//  TelaLogin.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 08/04/26.
//

import SwiftUI

struct TelaLogin: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    
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
                        Text("Login")
                            .frame(maxWidth: 99, maxHeight: 32)
                            .background(Color.blue)
                            .cornerRadius(10)
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
                        CustomInputField(label: "E-MAIL", placeholder: "Digite seu email", text: $email)
                        CustomInputField(label: "SENHA", placeholder: "*********", text: $senha)
                }.padding(20)
                VStack{
                Text("Esqueceu a senha")
                    .underline()
                    .foregroundStyle(Color.orange)
                        Text("Avançar")
                            .foregroundColor(.white) // texto não fique no azul padrão de links
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
    TelaLogin()
}
