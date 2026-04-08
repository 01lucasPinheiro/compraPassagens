//
//  Untitled.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 07/04/26.
//

import SwiftUI

struct InformacaoPassageiros: View {
    var body: some View {
        VStack{
            Text("Informações Passageiros")
            VStack(spacing: 20){
                VStack{
                    HStack{
                        Text("Passageiro")
                            .font(.system(size: 12))
                            .foregroundStyle(Color(red:24/255, green: 50/255, blue: 100/255))
                        Spacer()
                    }
                    TextField("Passageiro", text: .constant(""))
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                        
                }
                VStack{
                    HStack{
                        Text("Email")
                            .font(.system(size: 12))
                            .foregroundStyle(Color(red:24/255, green: 50/255, blue: 100/255))
                        Spacer()
                    }
                    TextField("Email", text: .constant(""))
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Data de nascimento")
                            .font(.system(size: 12))
                            .foregroundStyle(Color(red:24/255, green: 50/255, blue: 100/255))
                        Spacer()
                    }
                    TextField("Data de nascimento", text: .constant(""))
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Passaporte")
                            .font(.system(size: 12))
                            .foregroundStyle(Color(red:24/255, green: 50/255, blue: 100/255))
                        Spacer()
                    }
                    TextField("Passaporte", text: .constant(""))
                        .padding(.all, 5)
                        .frame(width: 300)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                
                    
                    
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
}

#Preview {
    InformacaoPassageiros()
}
