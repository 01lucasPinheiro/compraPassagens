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
        HStack(spacing: 0){
            Image(imagem)
                .cornerRadius(10)
            .padding()
            //Spacer()
            VStack(alignment: .leading){
                Text(titulo)
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulMedio)

                Text(texto)
                    .font(Font.custom("Baloo2-Medium", size: 12))
                    .foregroundStyle(Color.azulEscuro)


                .font(.body)
                .foregroundColor(.gray)

            }.frame(width: 200)
                .padding(.horizontal, -5)
        }
        .frame(width: 322, height: 87)
        .background(Color.azulClaro)
        //.background(Color.gray)
        .cornerRadius(10)
    }
}

#Preview {
    cardBlog(imagem: "gramado", titulo: "", texto: "Ao subirmos a serra já nos deparamos com a sua rica vegetação...")
}
