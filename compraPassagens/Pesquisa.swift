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
                        // Dica: Aqui você pode colocar um ícone se houver no design
                        Image(systemName: "arrow.left.arrow.right")
                            .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))
                        Text(Padroes.nomeCid2)
                    }
                    .font(.custom("Baloo 2", size: 12).weight(.medium))
                    .foregroundColor(Color.azulEscuro)
                    .padding(.horizontal, 20)
                    .frame(height: 35) // Altura ajustada para melhor área de toque
                    .background(Color.bege)
                    .cornerRadius(5)
                    
                }}
            
            // MARK: - Linha 2: Filtros e Opções
            HStack{
                PadraoFiltro(text: "Econômica", backCor: Color.bege, txtCor: Color.azulEscuro)
                PadraoFiltro(text: "1 Adulto", backCor: Color.bege, txtCor: Color.azulEscuro)
                
                HStack {
                    
                    VStack{
                        
                        Text("19/09")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
                            .foregroundColor(Color.azulEscuro)
                            .padding(.horizontal, 10)
                            .frame(height: 35) // Altura ajustada para melhor área de toque
                            .background(Color.bege)
                        .cornerRadius(5)}
                    
                    VStack{
                        Text("Volta")
                            .font(.custom("Baloo 2", size: 12).weight(.medium))
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



        VStack(spacing: 0) {
            
            VStack(spacing:  10) {
                VStack(spacing: 10) {
                    VStack{
                        TextField("Origem", text: $origem)
                            .cornerRadius(10)
                        Divider()
                        TextField("Destino", text: $destino)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.7)
                    )
                    
                    HStack{
                        Text("Classe").opacity(0.5)
                        Spacer()
                        Text("Data").opacity(0.5)
                        Spacer()
                        Text("passageiros").opacity(0.5)
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 0.7)
                        )
                    
                }
                .padding()
                .background(Color.blue.opacity(0.05))
                
                
                ScrollView(.vertical, showsIndicators: true) {
                    LazyVStack {
                        ForEach(0..<5) { i in
                            Card()
                                .padding(5)
                        }
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
            
        }
    }
}

#Preview {
    Pesquisa()
}
