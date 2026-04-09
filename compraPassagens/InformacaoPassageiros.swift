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
                .font(Font.custom("Baloo2-Medium", size: 20))
                .foregroundColor(Color.azulMedio)
            
            VStack(spacing: 20){
                VStack{
                    HStack{
                        Text("Passageiro")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.top, 5)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Passageiro", text: .constant(""))
                        .padding(.all, 10)
                        .frame(width: 270)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                        
                }
                VStack{
                    HStack{
                        Text("Email")
                            .font(Font.custom("Baloo2-Medium", size: 15))
                            .foregroundColor(Color.azulEscuro)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Email", text: .constant(""))
                        .padding(.all, 10)
                        .frame(width: 270)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Data de nascimento")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Data de nascimento", text: .constant(""))
                        .padding(.all, 10)
                        .frame(width: 270)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }
                VStack{
                    HStack{
                        Text("Passaporte")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulEscuro)
                            
                        
                        Spacer()
                    }.padding(-2)
                    TextField("Passaporte", text: .constant(""))
                        .padding(.all, 10)
                        .frame(width: 270)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                }.padding(.bottom, 5)
                
                    
                    
                }
            .padding(20)
            .background(Color.azulClaro)
            .cornerRadius(10)
            .padding(.horizontal, 50)
            
                        
            NavigationLink(destination: InformacoesPagamento()) {
                VStack{
                    Text("Avançar")
                        .font(Font.custom("Baloo2-Medium", size: 16))
                        .foregroundColor(Color.branco)
                        .foregroundColor(Color.azulClaro)
                        .frame(width: 179, height: 34)
                }
                .background(Color.azulMedio)
                .cornerRadius(50)
                .padding(.top, 10)

            }
        }
    }
}

#Preview {
    InformacaoPassageiros()
}
