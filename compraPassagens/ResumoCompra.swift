//
//  ResumoCompra.swift
//  compraPassagens
//

//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.


import SwiftUI

struct ResumoCompra: View {
    var body: some View {
        Text("Realizar o pagamento")
        VStack(spacing: 30){
            VStack{
                HStack{
                    Text("Valor total")
                    Spacer()
                    Text("BRL 5976,00")
                }
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.5, dash: [2]))
                    .foregroundColor(Color.azulMedio)
                    .frame(height: 1)
            }
            VStack{
                HStack{
                    Text("Copiar Codigo")
                    Spacer()
                    Image(systemName: "doc.on.doc")
                }
                .padding(.all, 5)
                .frame(width: 300)
                .background(Color.bege)
                .cornerRadius(10)
                Text("Qr Code")
                Image("qrcode")
                .frame(width: 113, height: 113)
                .background(Color.white)
            }
        }
        .padding()
        .background(Color(red: 205/255, green: 214/255, blue: 41/255))
        .cornerRadius(10)
        .padding(.horizontal, 40)
        

    }
    
}
#Preview {
    ResumoCompra()
}
