//
//  BarraPesquisa.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 07/04/26.
//

//import SwiftUI
//
//struct FlightSearchView: View {
//    // MARK: - Paleta de Cores
//    let bgDarkBlue = Color(red: 0.15, green: 0.30, blue: 0.59)
//    let beige = Color(red: 0.97, green: 0.96, blue: 0.92)
//    let textDarkBlue = Color(red: 0.09, green: 0.20, blue: 0.39)
//    let orangeBtn = Color(red: 0.95, green: 0.61, blue: 0.18)
//    let greyBtn = Color(red: 0.85, green: 0.85, blue: 0.85)
//    
//    var body: some View {
//        VStack(spacing: 12) {
//            
//            // MARK: - Linha 1: Trecho (Origem e Destino) + Botão de Busca
//            HStack(spacing: 8) {
//                
//                // Campo de Trecho (São Paulo -> Tóquio)
//                HStack {
//                    Text(Padroes.nomeCid1)
//                    Spacer()
//                    // Dica: Aqui você pode colocar um ícone se houver no design
//                    // Image(systemName: "arrow.left.arrow.right")
//                    Text(Padroes.nomeCid2)
//                }
//                .font(.custom("Baloo 2", size: 12).weight(.medium))
//                .foregroundColor(textDarkBlue)
//                .padding(.horizontal, 16)
//                .frame(height: 35) // Altura ajustada para melhor área de toque
//                .background(beige)
//                .cornerRadius(5)
//                
//                // Botão Laranja
//                Button(action: {
//                    // Ação do botão
//                }) {
//                    RoundedRectangle(cornerRadius: 3)
//                        .fill(orangeBtn)
//                        .frame(width: 35, height: 35)
//                        .overlay(
//                            // Caso haja um ícone de busca no design
//                            // Image(systemName: "magnifyingglass").foregroundColor(.white)
//                            Color.clear
//                        )
//                }
//            }
//            
//            // MARK: - Linha 2: Filtros e Opções
//            HStack(spacing: 8) {
//                FilterPill(text: "Econômica", bgColor: beige, textColor: textDarkBlue)
//                FilterPill(text: "1 Adulto", bgColor: beige, textColor: textDarkBlue)
//                FilterPill(text: "19/09", bgColor: beige, textColor: textDarkBlue)
//                FilterPill(text: "Volta", bgColor: greyBtn, textColor: textDarkBlue)
//            }
//        }
//        .padding(.horizontal, 20)
//        // Mantemos a altura do container azul conforme seu código original
//        .frame(maxWidth: .infinity)
//        .frame(height: 270)
//        .background(bgDarkBlue)
//        
//        ScrollView(.vertical, showsIndicators: true) {
//                            LazyVStack {
//                                ForEach(0..<5) { i in
//                                    Card()
//                                        .padding(5)
//                                }
//                            }
//                        }
//    }
//    
//}
//
//
//// MARK: - Componente Reutilizável
//// Criar essa struct fora tira a repetição de código (Text + font + background...)
//struct PadraoFiltro: View {
//    var text: String
//    var backCor: Color
//    var txtCor: Color
//    
//    var body: some View {
//        Text(text)
//            .font(.custom("Baloo 2", size: 12).weight(.medium))
//            .foregroundColor(txtCor)
//            .frame(maxWidth: .infinity) // Faz os botões dividirem a largura da tela igualmente
//            .frame(height: 35)
//            .background(backCor)
//            .cornerRadius(5)
//    }
//}
//
//#Preview {
//    FlightSearchView()
//}
