//
//  Card.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 06/04/26.
//

import SwiftUI

struct Card: View {
    
    let siglaIda : String
    let sigleVolta : String
    
    let origem : String
    let destino : String
    
    let dataIda : String
    let dataVolta : String
    
    let horarioIda : String
    let horarioVolta : String
    
    let duracao : String
    let preco : String
    let classe: String
    let qtdAdultos: Int
    
    
    var body: some View {
        
        
        ZStack{
            VStack(spacing: 0) {
                
                VStack{
                    VStack{ //LOGO companhia
                        HStack(alignment: .center) {
                            Image(systemName: "airplane.circle.fill") // Substitua pela sua imagem
                                .resizable()
                                .scaledToFit()
                                .frame(height: 24)
                            .foregroundColor(Color.gray)}}.padding(.top,15)
                    
                    HStack{ // 2. Linha Tracejada
                        Line()
                            .stroke(style: StrokeStyle(lineWidth: 0.7, dash: [2]))
                            .frame(height: 1)
                            .foregroundColor(Color.azulEscuro)
                            .padding(.vertical, 2)
                        .padding(.horizontal, 16)}
                }
                
                
                
                HStack(alignment: .top) { //Inicio de informações
                    
                    // Origem (Esquerda)
                    VStack(alignment: .leading, spacing: 2) {
                        
                        Text(siglaIda) //Abreviação
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                        
                        
                        Text(origem) //Cidade
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.bottom, 5)
                        
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(horarioIda) //Horario
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.top, 5)
                        
                        Text("Ida: \(dataIda)") //Dia
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                        
                    }
                    
                    Spacer()
                    
                    // Duração
                    VStack(spacing: 10) {
                        //Text("Duração\n\(Float(horarioVolta-horarioIda))h")
                        Text("Duração\n26h")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                            .multilineTextAlignment(.center)
                        
                    }.padding(.top, 40)
                        .frame(height: 70)
                    
                    Spacer()
                    
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 2) {
                        
                        Text(sigleVolta) //Abreviação
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                        
                        
                        Text(destino) //Cidade
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.bottom, 5)
                        
                        Rectangle()
                            .fill(Color.azulMedio)
                            .frame(height: 0.75)
                            .frame(maxWidth: 120)
                            .padding(.vertical, 5)
                        
                        Text(horarioVolta) //Horario
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.top, 5)
                        
                        
                        Text("Chegada: \(dataIda)") //Dia
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color.azulEscuro)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                
                // Botão
                HStack {
                    Text("BRL \(preco)")
                        .font(Font.custom("Baloo2-Medium", size: 12))
                        .foregroundColor(Color.bege)
                    
                    Spacer()
                    
                    NavigationLink(destination: ResumoViagem(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: sigleVolta)) {
                        Text("Escolher")
                            .font(Font.custom("Baloo2-Medium", size: 12))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 3)
                            .background(Color.verde)
                            .cornerRadius(50)
                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(Color.azulEscuro)
            }
            
            .frame(maxWidth: 350)
            
        }.background(Color.bege)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
            .cornerRadius(10)
    }
    
}

#Preview {
    Card(siglaIda: "", sigleVolta: "", origem: "", destino: "", dataIda: "", dataVolta: "", horarioIda: "", horarioVolta: "", duracao: "", preco: "", classe: "", qtdAdultos: 1)
}
