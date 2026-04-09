//
//  pesquisa.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//
import SwiftUI



struct Pesquisa: View {
    
    @State private var origem: String = ""
    @State private var destino: String = ""

    // MARK: - Paleta de Cores
    
    
    var body: some View {
        VStack(spacing: 12) {
            
            VStack{
                
                HStack(spacing: 30) {
                    
                    // Campo de Trecho (São Paulo -> Tóquio)
                    HStack {
                        
                        Text(Padroes.nomeCid1)

                        Image(systemName: "arrow.left.arrow.right")
                            .frame(maxWidth: .infinity, alignment:
                                    .init(horizontal: .center, vertical: .center))
                            
                        
                        Text(Padroes.nomeCid2)
                    }
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulEscuro)
                    .padding(.horizontal, 20)
                    .frame(height: 35) // Altura ajustada para melhor área de toque
                    .background(Color.bege)
                    .cornerRadius(5)
                    
                }}
            
            HStack{
                PadraoFiltro(text: "Econômica", backCor: Color.bege, txtCor: Color.azulEscuro)
                PadraoFiltro(text: "1 Adulto", backCor: Color.bege, txtCor: Color.azulEscuro)
                
                HStack {
                    
                    VStack{
                        
                        Text("19/09")
                            .font(Font.custom("Baloo2-Medium", size: 12))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.horizontal, 10)
                            .frame(height: 35) // Altura ajustada para melhor área de toque
                            .background(Color.bege)
                        .cornerRadius(5)}
                    
                    VStack{
                        Text("Volta")
                            .font(Font.custom("Baloo2-Medium", size: 12))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.horizontal, 10)
                            .frame(height: 35) // Altura ajustada para melhor área de toque
                            .background(Color.azulClaro)
                        .cornerRadius(5)}
                }
            }
            
        }
        .padding(.horizontal, 20)
        // Mantemos a altura do container azul conforme seu código original
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(Color.azulMedio)
        
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<5) { i in Card()
                        .padding(10)
                }
            }
        }
            
        }
    }


#Preview {
    Pesquisa()
}
