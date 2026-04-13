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
                    Image("qrcode")
                    .frame(width: 113, height: 113)
                }.padding(.all, 10)

            }.frame(width: 140, height: 140)
             .background(Color.bege)
             .cornerRadius(10)
            
            VStack{
                HStack{
                    Text("Copiar Codigo")
                        .foregroundColor(Color.azulEscuro)
                        .font(Font.custom("Inter", size: 16))
                    Spacer()
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(Color.azulEscuro)
                }.padding(15)
                 .background(Color.bege)
                 .cornerRadius(10)
            }
        }
        .padding(20)
        .background(Color.verde)
        .cornerRadius(10)
        .padding(.horizontal, 40)
        

    }
    
}
#Preview {
    ResumoCompra()
}
