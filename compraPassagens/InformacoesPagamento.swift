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
                    
                    NavigationLink(destination: ResumoCompra()) {
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
            .blur(radius: mostrarConfirmacao ? 5 : 0)
            
            if mostrarConfirmacao {
                // Fundo Escuro
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation { mostrarConfirmacao = false }
                    }

                VStack(spacing: 30) {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color.verde)
                    
                    Text("Pagamento Confirmado!")
                        .font(Font.custom("Baloo2-SemiBold", size: 20))
                        .foregroundColor(Color.azulMedio)
                    
                    Text("Sua reserva foi processada com sucesso.")
                        .font(Font.custom("Inter", size: 16))
                        .foregroundColor(Color.azulEscuro)
                        .multilineTextAlignment(.center)

                    Button(action: {
                        withAnimation { mostrarConfirmacao = false }
                    }) {
                        Text("OK")
                            .font(Font.custom("Baloo2-SemiBold", size: 16))
                            .foregroundColor(Color.branco)
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .background(Color.azulMedio)
                            .cornerRadius(50)
                    }
                }
                .padding(30)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 20)
                .padding(.horizontal, 40)
                .transition(.scale)
            }
        }
    }
}

#Preview {
    NavigationStack {
        InformacoesPagamento()
    }
}
