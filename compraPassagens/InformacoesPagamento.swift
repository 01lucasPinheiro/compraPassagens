//
//  InformacoesPagamento.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 07/04/26.
//

import SwiftUI

struct InformacoesPagamento: View {
    @State private var estaExpandido: Bool = false
    @State private var metodoPagamento = "Selecione metodo de pagamento"
    @State private var mostrarConfirmacao: Bool = false
    
    var body: some View {
        ZStack() {
            
            VStack() {
            Spacer()
                VStack(spacing: 16) {
                    Text("Tarifa")
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    Text("Seguro viagem")
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    Text("Informações pessoais")
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding(.top)

                Text("Informações de pagamento")
                    .font(.headline)

                VStack(spacing: 10) {
                    Text("pagamento")
                        .font(.caption)
                    
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
                        .foregroundStyle(Color.black)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    
                    TextField("Cupons e pontos", text: .constant(""))
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding()
                .background(Color(red: 206/255, green: 234/255, blue: 238/255))
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.7))
                .padding(.horizontal, 40)
                
                Button(action: {
                    withAnimation {
                        mostrarConfirmacao = true
                    }
                }) {
                    Text("Realizar Pagamento")
                        .foregroundColor(.white)
                        .frame(width: 250, height: 44)
                        .background(Color(red: 106/255, green: 150/255, blue: 244/255))
                        .cornerRadius(10)
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

                VStack(spacing: 20) {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.green)
                    
                    Text("Pagamento Confirmado!")
                        .font(.title3)
                        .bold()
                    
                    Text("Sua reserva foi processada com sucesso.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)

                    Button(action: {
                        withAnimation { mostrarConfirmacao = false }
                    }) {
                        Text("OK")
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .padding(30)
                .background(Color.white)
                .cornerRadius(25)
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
