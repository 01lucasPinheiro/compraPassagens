//
//  InformacoesPagamento.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 07/04/26.
//

import SwiftUI

struct InformacoesPagamento: View {
    @State private var estaExpandido: Bool = false
    @State private var metodoPagamento = "Opção de pagamento"
    @State private var mostrarConfirmacao: Bool = false
    
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
    
    var body: some View {
        ZStack() {
            
            VStack() {
            Spacer()
                VStack(spacing: 16) {
                    Text("Tarifa")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color.azulEscuro)
                        .padding(.all, 10)
                        .frame(width: 340)
                        .background(Color.bege)
                        .cornerRadius(10)
                    
                    Text("Seguro viagem")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color.azulEscuro)
                        .padding(.all, 10)
                        .frame(width: 340)
                        .background(Color.bege)
                        .cornerRadius(10)
                    
                    Text("Informações pessoais")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color.azulEscuro)
                        .padding(.all, 10)
                        .frame(width: 340)
                        .background(Color.bege)
                        .cornerRadius(10)
                }
                .padding(.top)

                Text("Informações de pagamento")
                    .font(Font.custom("Baloo2-Medium", size: 20))
                    .foregroundColor(Color.azulMedio)
                    .padding(.top, 20)


                VStack(spacing: 10) {
                    Text("Opções de pagamento")
                        .font(Font.custom("Baloo2-Medium", size: 16))
                        .foregroundColor(Color.azulEscuro)
                    
                    DisclosureGroup(metodoPagamento, isExpanded: $estaExpandido) {
                        VStack(alignment: .leading) {
                            Divider()
                            Button("Cartão de Crédito", systemImage: "creditcard") {
                                metodoPagamento = "Cartão de Crédito"
                                estaExpandido = false
                            }
                            Divider()
                            Button("Pix", systemImage: "qrcode") {
                                metodoPagamento = "Pix"
                                estaExpandido = false
                            }
                            Divider()
                            Button("Boleto", systemImage: "barcode") {
                                metodoPagamento = "Boleto"
                                estaExpandido = false
                            }
                        }
                        .padding()
                    }
                    .padding()
                    .foregroundColor(Color.azulMedio)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    
                    TextField("Cupons e pontos", text: .constant(""))
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color.azulMedio)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                .padding()
                .background(Color.azulClaro)
                .cornerRadius(10)
                .padding(.horizontal, 30)
                
                Button(action: {
                    withAnimation {
                        mostrarConfirmacao = true
                    }
                }) {
                    
                    NavigationLink(destination: ResumoCompra(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)) {
                        Text("Realizar Pagamento")
                            .font(Font.custom("Baloo2-SemiBold", size: 16))
                            .foregroundColor(Color.branco)
                            .frame(width: 200, height: 35)
                            .background(Color.azulMedio)
                            .cornerRadius(50)
                        .padding(.top, 20)}
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        InformacoesPagamento(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
    }
}
