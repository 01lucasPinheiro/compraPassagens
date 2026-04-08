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
            
            Text("Informacoes pessoais")
                .padding(.all, 5)
                .frame(width: 300)
                .background(Color.gray.opacity(0.7))
                .cornerRadius(10)
        }.padding()
        
        Text("Informacoes de pagamento")
        VStack(spacing: 20){
            Text("pagemento")
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
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            }
            .padding()
        }
        .padding(10)
        .background(Color(red: 206/255, green: 234/255, blue: 238/255))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 0.7)
        )
        .padding(.horizontal, 50)
        
        NavigationLink(destination: InformacoesPagamento()) {
            VStack {
                Text("Avançar")
                    .foregroundColor(.white) // Garante que o texto não fique no azul padrão de links
                    .frame(width: 179, height: 34)
            }
            .background(Color(red: 106/255, green: 150/255, blue: 244/255))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
            )
        }
    }
    
}

#Preview {
    InformacoesPagamento()
}
