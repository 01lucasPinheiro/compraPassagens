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
    
    //Possibilita mudança de estado do botão caso preenchido os dados (senha e email)
    var formularioValido: Bool {
        !email.trimmingCharacters(in: .whitespaces).isEmpty && senha.count >= 6
    }
    
    // MARK: Inicio da pagina
    var body: some View {
        
        ZStack{
            
            VStack{
                Spacer()
                
                // MARK: Texto
                VStack{
                    Text("Faça seu login ou cadastre-se para continuar")
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundStyle(Color.azulMedio)
                    
                }.padding(40)

                //MARK: Opção de Login ou Cadastro
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
                        NavigationLink(destination: telaCadastro(label: "",origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)){
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
                
                //MARK: TextFields
                    VStack{
                        CustomInputField(label: "E-MAIL", placeholder: "Digite seu email", text: $email)
                        
                        VStack (spacing:0){ //Por se tratar de senha usamos SecureField
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
                
                //MARK: Link para Esqueci a Senha
                VStack{ //por ser MVP não fizemos tela, apenas apresentamos a possibilidade
                Text("Esqueceu a senha?")
                    .underline()
                    .foregroundStyle(Color.laranja)
                    
                    //MARK: Botão para Avançar
                    NavigationLink(destination: InformacaoPassageiros(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)) {
                        Text("Avançar")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(formularioValido ? Color.branco : Color.azulMedio)
                            .frame(width: 179, height: 32)
                            // Muda a cor para cinza se estiver inválido
                            .background(formularioValido ? Color.azulMedio : Color.azulClaro)
                            .cornerRadius(50)
                    } .disabled(!formularioValido)
                }
                Spacer()
                }
            }
        }
    }



#Preview {
    TelaLogin(origem: "", destino: "", classe: "", qtdAdultos: 1, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}
