//
//  CardResumoViagem.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 08/04/26.
//

import SwiftUI

struct CardResumoViagem: View {
    
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    
    //Card fixo
    @State var precoFixo = "1570,99"
    @State var horarioIdaFixo = "17:30"
    @State var horarioVoltaFixo = "12:17"
    
    var body: some View {

        ZStack{
                VStack(spacing: 0) {
                    
                    VStack{
                        VStack{
                            HStack(alignment: .center) {
                                Image(systemName: "airplane.circle.fill") // Substitua pela sua imagem
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 24)
                                    .foregroundColor(Color.gray)}}.padding(.top,15)
                        
                        HStack{ // 2. Linha Tracejada
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 0.7, dash: [1.5]))
                                .frame(height: 1)
                                .foregroundColor(Color.azulEscuro)
                                .padding(.vertical, 3)
                                .padding(.horizontal, 16)}
                    }
                    
                    HStack(alignment: .top) {
                        
                        // Origem (Esquerda)
                        VStack(alignment: .leading, spacing: 4) {
                            
                            
                            Text(origem)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .foregroundColor(Color.azulMedio)
                                
                            Text(siglaIda)
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color.azulEscuro)
                                .padding(.vertical, 3)
                            
                            Rectangle()
                                .fill(Color.azulMedio)
                                .frame(height: 0.75)
                                .frame(maxWidth: 120)
                                .padding(.vertical, 5)
                            
                            Text(horarioIdaFixo)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .foregroundColor(Color.azulMedio)
                                .padding(.top,4)
                            
                            Text(dataIda)
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color.azulEscuro)
                                
                        }
                        
                        Spacer()
                        
                        // Duração e Linha (Centro)
                        VStack(spacing: 7) {
                            Text("Duração")
                                .font(Font.custom("Inter", size: 10))
                                .foregroundColor(Color.azulEscuro)
                            Text("14h 55m")
                                .font(Font.custom("Inter", size: 14))
                                .foregroundColor(Color.azulEscuro)
                            
                        }.padding(.top, 30)
                            .frame(height: 70)
                        
                        Spacer()
                        
                        // Destino (Direita)
                        VStack(alignment: .trailing, spacing: 4) {
                            
                            Text(destino)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .foregroundColor(Color.azulMedio)
                            
                            Text(siglaVolta)
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color.azulEscuro)
                                .padding(.vertical, 3)
                            
                            Rectangle()
                                .fill(Color.azulMedio)
                                .frame(height: 0.75)
                                .frame(maxWidth: 120)
                                .padding(.vertical, 5)
                            
                            Text(horarioVoltaFixo)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .foregroundColor(Color.azulMedio)
                                .padding(.top,4)
                            
                            
                            Text(Padroes.diaCard3)
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color.azulEscuro)
                                
                        }
                        
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)
                    
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 0.7, dash: [1.5]))
                        .frame(height: 1)
                        .foregroundColor(Color.azulEscuro)
                        .padding(.horizontal, 16)
                    
                    // MARK: - Barra de Preço e Botão (Parte Inferior)
                    HStack {
                        Text(classe)
                            .font(Font.custom("Baloo2-Medium", size: 14))
                            .foregroundColor(Color.azulMedio)
                        
                        Spacer()
                        
                        Text("\(qtdAdultos) Adultos")
                            .font(Font.custom("Baloo2-Medium", size: 14))
                            .foregroundColor(Color.azulMedio)
                        
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 20)

                }
                
                .frame(maxWidth: 350)
                
            }.background(Color.bege)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                .cornerRadius(10)
        }
    }


#Preview {
    CardResumoViagem(origem: "", destino: "", classe: "", qtdAdultos: 1, dataIda: "", siglaIda: "", siglaVolta: "")
}
