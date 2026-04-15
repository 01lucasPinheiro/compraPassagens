//
//  ResumoCompra.swift
//  compraPassagens
//

//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.


import SwiftUI

struct ResumoCompra: View {
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
    @State var precoFixo = "1570,99"
    
    var body: some View {
        ZStack { // Camada base
            ScrollView { // Adicionado para garantir que caiba em telas menores
                VStack(spacing: 20) {
                    Text("Resumo da compra")
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundColor(Color.azulMedio)
                    
                    // Card de Resumo
                    CardResumoCompra(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)
                    
                    Text("Realize o pagamento")
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundColor(Color.azulMedio)
                    
                    // Área de Pagamento
                    VStack(spacing: 20) {
                        HStack {
                            Text("Valor total")
                            Spacer()
                            Text("BRL \(precoFixo)")
                        }
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundColor(Color.azulEscuro)
                        
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
                            .frame(height: 1)
                            .foregroundColor(Color.azulMedio)
                        
                        // QR Code
                        VStack {
                            Image("qrcode") // Certifique-se que o asset existe
                                .resizable()
                                .interpolation(.none)
                                .frame(width: 113, height: 113)
                        }
                        .frame(width: 140, height: 140)
                        .background(Color.bege)
                        .cornerRadius(10)
                        
                        // Botão Copiar Código (Simula a ativação do pop-up)
                        Button(action: {
                            withAnimation(.spring()) {
                                mostrarConfirmacao = true
                            }
                        }) {
                            HStack {
                                Text("Copiar Codigo")
                                    .foregroundColor(Color.azulEscuro)
                                    .font(Font.custom("Inter", size: 16))
                                Spacer()
                                Image(systemName: "doc.on.doc")
                                    .foregroundColor(Color.azulEscuro)
                            }
                            .padding(15)
                            .background(Color.bege)
                            .cornerRadius(10)
                        }
                    }
                    .padding(20)
                    .background(Color.verde)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                }
                .padding()
                .blur(radius: mostrarConfirmacao ? 4 : 0) // Efeito visual de fundo
            }
            
            // Camada do Pop-up (Sobreposição)
            if mostrarConfirmacao {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture { withAnimation { mostrarConfirmacao = false }
                    }
                
                VStack(spacing: 25) {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color.verde)
                    
                    VStack(spacing: 5) {
                        Text("Pagamento Confirmado!")
                            .font(Font.custom("Baloo2-SemiBold", size: 22))
                            .foregroundColor(Color.azulMedio)
                        
                        Text("Sua reserva foi processada com sucesso.")
                            .font(Font.custom("Inter", size: 16))
                            .foregroundColor(Color.azulEscuro)
                            .multilineTextAlignment(.center)
                    }
                    
                    // Botão de ação do Pop-up
                    NavigationLink(destination: InfoPassagem(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: nomePassageiro)) {
                        Text("OK")
                            .font(Font.custom("Baloo2-SemiBold", size: 18))
                            .foregroundColor(Color.branco)
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(Color.azulMedio)
                            .cornerRadius(50)
                    }
                }
                .padding(30)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 20)
                .padding(.horizontal, 40)
                .transition(.scale.combined(with: .opacity))
                .zIndex(1) // Garante que fique no topo
            }
        }
    }
}
#Preview {
    ResumoCompra(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}
