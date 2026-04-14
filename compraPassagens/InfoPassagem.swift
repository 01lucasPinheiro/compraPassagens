//
//  InfoPassagem.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 13/04/26.
//

import SwiftUI

struct InfoPassagem: View {
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    @State var nomePassageiro: String
        @State var precoFixo = "1570,99"
    
    var body: some View {
        // ZStack apenas para o fundo azul ocupar a tela toda
        ZStack {
            Color.azulEscuro.ignoresSafeArea()
            
            // ScrollView para garantir que o conteúdo não corte em telas pequenas
            ScrollView {
                
                VStack(spacing: 15) {
                    
                    Text("Sua Passagem")
                        .font(Font.custom("Baloo2-Medium", size: 20))
                        .foregroundColor(Color.azulClaro)
                    // CARD 1: Logo e Tipo de Viagem
                    HStack {
                        CardLogo()
                            .frame(width: 59, height: 50)
                        Spacer()
                        Text("Apenas IDA")
                            .font(.custom("Inter", size: 16))
                            .foregroundColor(.azulEscuro)
                    }
                    .padding()
                    .background(Color.branco)
                    .cornerRadius(10)
                    
                    // CARD 2: Origem e Destino (Abreviados)
                    HStack {
                        VStack(alignment: .leading) {
                            Text(siglaIda).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            Text(origem).font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                        }
                        Rectangle().fill(Color.azulMedio).frame(height: 1).padding(.horizontal)
                        VStack(alignment: .trailing) {
                            Text(siglaVolta).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            Text(destino).font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                        }
                    }
                    .padding()
                    .background(Color.branco)
                    .cornerRadius(10)
                    
                    // CARD 3: Detalhes do Passageiro e Voo
                    VStack(spacing: 20) {
                        // Linha 1: Passageiro e Companhia
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Passageiro").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text(nomePassageiro).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Preço").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text("BRL \(precoFixo)").font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                        }
                        
                        // Linha 2: Cidades
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Origem").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text(origem).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Destino").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text(destino).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                        }
                        
                        // Linha 3: Datas e Outros
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Data de ida").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text(dataIda).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Núm. de conexões").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text("Nenhuma").font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                        }
                        
                        // Linha 4: Datas e Outros
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Ticket").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text("EL-177").font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Classe").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text(classe).font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                        }
                        
                        // Linha 5: Datas e Outros
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Assento").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text("24-A").font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Duração").font(.custom("Inter", size: 12)).foregroundColor(.azulEscuro)
                                Text("29h 15m").font(.custom("Baloo2-Medium", size: 16)).foregroundColor(.azulMedio)
                            }
                        }
                    }
                    .padding(30)
                    .background(Color.branco)
                    .cornerRadius(10)
                    ///
                    HStack {
                        Spacer()
                    Image("Codigo_barras")
                        .frame(width: 59, height: 50)
                    Spacer()
                }
                .padding()
                .background(Color.branco)
                .cornerRadius(10)
                    
                }
                .padding(30) // Margem lateral da lista de cards
            }
        }
    }
}
#Preview {
    InfoPassagem(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "", nomePassageiro: "")
}
