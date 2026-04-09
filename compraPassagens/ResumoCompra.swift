//
//  ResumoCompra.swift
//  compraPassagens
//

//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.


import SwiftUI

struct ResumoCompra: View {
    var body: some View {
        
        
        VStack(spacing: 20){
            Text("Resumo da compra")
                .font(Font.custom("Baloo2-Medium", size: 20))
                .foregroundColor(Color.azulMedio)
            
            CardResumoCompra()
               
        }.padding(20)

        Text("Realize o pagamento")
            .font(Font.custom("Baloo2-Medium", size: 20))
            .foregroundColor(Color.azulMedio)
            .padding(10)
        
        VStack(spacing: 10){
            
            VStack{
                HStack{
                    Text("Valor total")
                    
                    Spacer()
                    
                    Text("BRL 5976,00")
                    
                }.font(Font.custom("Baloo2-Medium", size: 20))
                    .foregroundColor(Color.azulEscuro)
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
                    .foregroundColor(Color.azulMedio)
                
            }
            VStack{
                HStack{
                    Text("Copiar Codigo")
                        .foregroundColor(Color.azulEscuro)
                    Spacer()
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(Color.azulEscuro)
                }
                .padding(.all, 10)
                .frame(width: 300)
                .background(Color.bege)
                .cornerRadius(10)
                Text("Qr Code")
                Image("qrcode")
                //.frame(width: 113, height: 113)
                .background(Color.bege)
            }
        }
        .padding()
        .background(Color.verde)
        .cornerRadius(10)
        .padding(.horizontal, 40)
        

    }
    
}
#Preview {
    ResumoCompra()
}
