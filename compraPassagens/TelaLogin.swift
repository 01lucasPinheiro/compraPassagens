//
//  TelaLogin.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 08/04/26.
//

import SwiftUI

struct TelaLogin: View {
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
                        Text("Cadastre-se")
                            .frame(maxWidth: 99, maxHeight: 32)
                            .background(Color.blue)
                            .cornerRadius(10)
                        Spacer()
                    }
                }
                VStack{
                    VStack{
                        HStack{
                            Text("E-MAIL")
                                .font(Font.system(size: 12, weight: .bold, design: .default))
                            Spacer()
                        }
                        TextField("Digite seu email", text: .constant(""))
                    }
                    .padding()
                        .frame(maxWidth: 300, maxHeight: 60)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                    VStack{
                        HStack{
                            Text("SENHA")
                                .font(Font.system(size: 12, weight: .bold, design: .default))
                            Spacer()
                        }
                        TextField("************", text: .constant(""))
                    }
                    .padding()
                        .frame(maxWidth: 300, maxHeight: 60)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }.padding(20)
                VStack{
                Text("Esqueceu a senha")
                    .underline()
                    .foregroundStyle(Color.orange)

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
    TelaLogin()
}
