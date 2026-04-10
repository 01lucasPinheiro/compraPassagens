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
            VStack{
                VStack{
                    Text("Faça seu login ou cadastre-se para continuar")
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundStyle(Color.azulMedio)
                    
                }.padding(40)

                
                VStack{
                    HStack{
                        Spacer()
                        Text("Login")
                            .foregroundStyle(Color.verde)
                            .frame(maxWidth: 120, maxHeight: 32)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .background(Color.azulEscuro)
                            .cornerRadius(50)
                        Spacer()
                        NavigationLink(destination: telaCadastro()){
                            Text("Cadastro")
                                .foregroundStyle(Color.azulEscuro)
                                .frame(maxWidth: 120, maxHeight: 32)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .background(Color.azulClaro)
                                .cornerRadius(50)
                        }
                        Spacer()
                    }
                }
                    VStack{
                        CustomInputField(label: "E-MAIL", placeholder: "Digite seu email", text: $email)
                        
                        SecureField("Digite sua senha", text: $senha)
                              .padding(20)
                                    .background(Color.branco)
                                    .foregroundColor(Color.azulEscuro)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.azulEscuro))
//                        CustomInputField(label: "SENHA", placeholder: "*********", text: $senha)
                        
                }.padding(30)
                VStack{
                Text("Esqueceu a senha?")
                    .underline()
                    .foregroundStyle(Color.laranja)
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
    TelaLogin()
}
