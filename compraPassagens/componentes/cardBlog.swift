//
//  cardBlog.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 10/04/26.
//

import SwiftUI

struct cardBlog: View {
    let imagem: String
    let titulo: String
    let texto: String
    var body: some View {
        HStack(spacing: 0.1){
            Image(imagem)
            .cornerRadius(5)
            .padding()
            //Spacer()
            VStack(alignment: .leading){
                Text(titulo)
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulMedio)

                Text(texto)
                    .font(Font.custom("Inter", size: 11))
                    .foregroundStyle(Color.azulEscuro)

            }.frame(width: 210)
                .padding(.horizontal, 0.5)
        }
        .frame(width: 340)
        .background(Color.azulClaro)
        .cornerRadius(10)
    }
}

#Preview {
    cardBlog(imagem: "gramado", titulo: "", texto: "Ao subirmos a serra já nos deparamos com a sua rica vegetação...")
}
