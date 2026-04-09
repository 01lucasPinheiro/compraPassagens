//
//  ResumoViagem.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 08/04/26.
//

import SwiftUI

struct ResumoViagem: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true) {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(spacing: 20){
                    
                    VStack(spacing: 2) {
                        Text("Resumo de sua viagem")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                    }
                    
                    CardResumoViagem()
                    
                    VStack {
                        HStack{
                            
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 0.7))
                                .foregroundColor(Color.azulMedio)
                                .frame(width: 50,height: 5)
                            
                            
                            Text("Espera de 1h em Doha (Troca de Avião)")
                                .font(.custom("Baloo 2", size: 12).weight(.medium))
                                .foregroundColor(Color.azulMedio)
                            
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 0.7))
                                .foregroundColor(Color.azulMedio)
                                .frame(width: 50,height: 5)
                            
                        }}
                    
                    CardResumoViagem()
                    
                    VStack {
                        Text("Horários em hora local de cada cidade")
                            .font(.custom("Inter", size: 12))
                            .foregroundColor(Color.azulMedio)
                    }
                }
                
                Spacer(minLength: 40)
                VStack (spacing: 20){
                    Text("Taxas adicionais")
                        .font(.custom("Baloo 2", size: 16).weight(.medium))
                        .foregroundColor(Color.azulMedio)
                }
                
                VStack (spacing: 10){
                    
                    HStack{
                        Text("Valor total")
                         .font(.custom("Baloo 2", size:20).weight(.medium))
                         .foregroundColor(Color.bege)
                        
                        Spacer()

                        Text("BRL 5.844,00")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.bege)
                    }
                    
                    // Linha divisória (Substitui o Rectangle com stroke)
                                Divider()
                        .background(Color.azulClaro)
                                
                                // Informação adicional
                                Text("Incluindo taxas e impostos")
                                    .font(.custom("Inter", size: 12).weight(.medium))
                                    .foregroundColor(Color.bege)
                }
                .padding(20)
                .frame(width: 350, height: 90)
                .cornerRadius(10)
                .background(Color.azulMedio)
                
                
                
            }
        }
    }}

#Preview {
    ResumoViagem()
}
