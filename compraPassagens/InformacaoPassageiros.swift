//
//  Untitled.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 07/04/26.
//

import SwiftUI

struct InformacaoPassageiros: View {
    @State var email: String = ""
    @State var dataNasc: String = ""
    @State var passaport: String = ""
    
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
    
    //MARK: Inicio da pagina
    var body: some View {
        
        VStack{
            Text("Informações Passageiros")
                .font(Font.custom("Baloo2-Medium", size: 20))
                .foregroundColor(Color.azulMedio)
            
            VStack(spacing: 20){
                VStack{
                    HStack{
                        Text("Passageiro")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.top, 5)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Passageiro", text: $nomePassageiro)
                        .padding(.all, 10)
                        .frame(width: 270)
                        .foregroundColor(Color.azulEscuro)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Email")
                            .font(Font.custom("Baloo2-Medium", size: 15))
                            .foregroundColor(Color.azulEscuro)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Email", text: $email)
                        .padding(.all, 10)
                        .frame(width: 270)
                        .foregroundColor(Color.azulEscuro)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Data de nascimento")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Data de nascimento", text: $dataNasc)
                        .padding(.all, 10)
                        .frame(width: 270)
                        .foregroundColor(Color.azulEscuro)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Passaporte")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                            
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Passaporte", text: $passaport)
                        .padding(.all, 10)
                        .frame(width: 270)
                        .foregroundColor(Color.azulEscuro)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }.padding(.bottom, 5)
                    
                }
            .padding(20)
            .background(Color.azulClaro)
            .cornerRadius(10)
            .padding(.horizontal, 50)
            
            //MARK: Botão de Avançar
            NavigationLink(destination: InformacoesPagamento(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)) {
                VStack{
                    Text("Avançar")
                        .font(Font.custom("Baloo2-Medium", size: 16))
                        .foregroundColor(Color.branco)
                        .foregroundColor(Color.azulClaro)
                        .frame(width: 179, height: 34)
                }
                .background(Color.azulMedio)
                .cornerRadius(50)
                .padding(.top, 10)
            }
        }
    }
}

#Preview {
    InformacaoPassageiros(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}
