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
    
    @State private var senha: String = ""
    let label: String
    
    var formularioValido: Bool {

        !email.trimmingCharacters(in: .whitespaces).isEmpty && senha.count >= 6
    }
    
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Spacer()
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
                    
                    VStack (spacing:0){
                        HStack {
                            Text("SENHA")
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .foregroundStyle(Color.azulMedio)
                            Spacer()
                        }
                        SecureField("Digite sua senha", text: $senha)
                        .foregroundColor(Color.azulEscuro)

                    }
                    .padding(20)
                    .frame(maxHeight: 75)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.azulEscuro, lineWidth: 1)
                    )
                    
                }.padding(30)
                VStack{
                    
                    NavigationLink(destination: InformacaoPassageiros(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")){
                        Text("Avançar")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(formularioValido ? Color.branco : Color.azulMedio)
                            .frame(width: 179, height: 32)
                            // Muda a cor para cinza se estiver inválido
                            .background(formularioValido ? Color.azulMedio : Color.azulClaro)
                            .cornerRadius(50)}
                }
            Spacer()
                }
            }
    }
}


#Preview {
    telaCadastro(label: "")
}
