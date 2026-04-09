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
    
    var body: some View {
        
        VStack(spacing: 16){
            Text("Tarifa")
                .padding(.all, 5)
                .frame(width: 300)
                .background(Color.gray.opacity(0.7))
                .cornerRadius(10)
            
            Text("Seguro viagem")
                .padding(.all, 5)
                .frame(width: 300)
                .background(Color.gray.opacity(0.7))
                .cornerRadius(10)
            
            Text("Informações pessoais")
                .padding(.all, 5)
                .frame(width: 300)
                .background(Color.gray.opacity(0.7))
                .cornerRadius(10)
        }.padding()
        
        Text("Informações de pagamento")
        VStack(spacing: 20){
            Text("Opções de pagamento")
            VStack {
                DisclosureGroup(metodoPagamento, isExpanded: $estaExpandido) {
                    VStack(alignment: .leading) {
                        Divider()
                        Button("Cartão de Crédito", systemImage: "creditcard") {metodoPagamento = "Cartão de Crédito"; estaExpandido = false}
                        Divider()
                        Button("Pix", systemImage: "qrcode") { metodoPagamento = "Pix"; estaExpandido = false}
                        Divider()
                        Button("Boleto", systemImage: "barcode") { metodoPagamento = "Boleto"; estaExpandido = false}
                    }
                    .padding()
                }
                .foregroundStyle(Color.azulEscuro)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            }
            .padding()
        }
        .padding(10)
        .background(Color.azulClaro)
        .cornerRadius(10)

        .padding(.horizontal, 50)
        
        NavigationLink(destination: InformacoesPagamento()) {
            VStack {
                Text("Avançar")
                    .foregroundColor(Color.branco) // Garante que o texto não fique no azul padrão de links
                    .frame(width: 179, height: 34)
            }
            .background(Color.azulMedio)
            .cornerRadius(50)

        }
    }
    
}

#Preview {
    InformacoesPagamento()
}
