//
//  CardRoteiroPronto.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 10/04/26.
//

import SwiftUI

struct CardRoteiroPronto: View {
    let imagem: String
    let destino: String
    var body: some View {
        VStack{
            Image(imagem)
                .resizable()
                .scaledToFill()
                .frame(width: 151, height: 141)
                .background(Color.red.opacity(0.5))
                .cornerRadius(10)
            Text(destino)
                .font(Font.custom("Baloo2-Medium", size: 14))
                .foregroundStyle(Color.white)
        }
    }
}


#Preview {
    CardRoteiroPronto(imagem: "", destino: "")
}
