//
//  CardResumoCompra.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 09/04/26.
//
import SwiftUI

struct CardResumoCompra: View {
    
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    @State var nomePassageiro: String
    //Card fixo
    @State var precoFixo = "1570,99"
    @State var horarioIdaFixo = "17:30"
    @State var horarioVoltaFixo = "12:17"
    
    var body: some View {

        ZStack{
            VStack(spacing: 0) {
                
                HStack(alignment: .top) { //Primeira linha
                    
                    // Passageiro (Esquerda)
                    VStack(alignment: .leading, spacing: 4) {
                        
                        
                        Text("Passageiro")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(nomePassageiro)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Companhia (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Companhia")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Image(systemName: "airplane.circle.fill") // Substitua pela sua imagem
                            .resizable()
                            .scaledToFit()
                            .frame(height: 24)
                        
                        
                    }
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 10)
                .padding(.top, 10)
                
                HStack{ //Segunda Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Origem
                        
                        
                        Text("Origem")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(origem)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Destino (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Destino")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(destino)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Terceira Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Data ida
                        
                        
                        Text("Data de ida")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(dataIda)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Duração (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Duração")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("29h 15m")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                
                HStack{ //Quarta Linha
                    
                    VStack(alignment: .leading, spacing: 4) { //Ticket
                        
                        
                        Text("Ticket")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text("EL-177")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                    }
                    
                    Spacer()
                    // Classe (Direita)
                    VStack(alignment: .trailing, spacing: 4) {
                        
                        Text("Classe")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color.azulEscuro)
                        
                        Text(classe)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .foregroundColor(Color.azulMedio)
                            .padding(.vertical, 3)
                        
                    }
                }.padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .padding(.bottom, 10)
                
            }.frame(maxWidth: 350) //VStack
                
            }.background(Color.bege) //ZStack
             .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
             .cornerRadius(10)
        }
    }

#Preview {
    CardResumoCompra(origem: "", destino: "", classe: "", qtdAdultos: 1, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}

