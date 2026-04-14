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
    
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    @State var nomePassageiro: String
    
    //Card fixo
    @State var precoFixo = "1570,99"
    @State var horarioIdaFixo = "17:30"
    @State var horarioVoltaFixo = "12:17"
    
    var formularioValido: Bool {

        !email.trimmingCharacters(in: .whitespaces).isEmpty && senha.count >= 6
    }
    
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
                    
                    NavigationLink(destination: InformacaoPassageiros(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)) {
                        Text("Avançar")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 179, height: 32)
                            // Muda a cor para cinza se estiver inválido
                            .background(formularioValido ? Color.azulMedio : Color.gray)
                            .cornerRadius(50)
                    }

                    .disabled(!formularioValido)
                }
            Spacer()
                }
            }
        }
    }



#Preview {
    TelaLogin(origem: "", destino: "", classe: "", qtdAdultos: 1, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}
