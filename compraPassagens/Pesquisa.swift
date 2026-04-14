//
//  pesquisa.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//
import SwiftUI



struct Pesquisa: View {
    
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    
    // MARK: - Paleta de Cores
    
    var horarioIdaRandom: String {
        let hora = Int.random(in: 0...23)
        let minuto = Int.random(in: 0...59)
        return String(format: "%02d:%02d", hora, minuto)
    }

    var horarioVoltaRandom: String {
        // Para a volta ser logicamente após a ida, você pode
        // apenas gerar outro aleatório ou somar horas ao primeiro.
        let hora = Int.random(in: 0...23)
        let minuto = Int.random(in: 0...59)
        return String(format: "%02d:%02d", hora, minuto)
    }
    
    var precoRandom: String{
        let preco = Int.random(in: 500...5000)
        let centavos = Int.random(in: 0...99)
        return String(format: "%d,%02d", preco, centavos)

    }
    
    //Card fixo
    @State var precoFixo = "1570,99"
    @State var horarioIdaFixo = "17:30"
    @State var horarioVoltaFixo = "12:17"
    
    
    var body: some View {
        VStack(spacing: 12) {
            
            VStack{
                
                HStack(spacing: 30) {
                    
                    // Campo de Trecho (São Paulo -> Tóquio)
                    HStack {
                        
                        Text(origem)

                        Image(systemName: "arrow.left.arrow.right")
                            .frame(maxWidth: .infinity, alignment:
                                    .init(horizontal: .center, vertical: .center))
                            
                        
                        Text(destino)
                    }
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulEscuro)
                    .padding(.horizontal, 20)
                    .frame(height: 35) // Altura ajustada para melhor área de toque
                    .background(Color.bege)
                    .cornerRadius(5)
                    
                }}
            
            HStack{
                PadraoFiltro(text: classe, backCor: Color.bege, txtCor: Color.azulEscuro)
                PadraoFiltro(text: "\(qtdAdultos) Adultos", backCor: Color.bege, txtCor: Color.azulEscuro)
                
                HStack {
                    
                    VStack{
                        
                        Text(dataIda)

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
                Card(siglaIda: siglaIda, sigleVolta: siglaVolta, origem: origem, destino: destino, dataIda: dataIda, dataVolta: "", horarioIda: horarioIdaFixo, horarioVolta: horarioVoltaFixo, duracao: "", preco: precoFixo,classe: classe,qtdAdultos: qtdAdultos).padding(10)
                ForEach(0..<5) { i in Card(siglaIda: siglaIda, sigleVolta: siglaVolta, origem: origem, destino: destino, dataIda: dataIda, dataVolta: "", horarioIda: horarioIdaRandom, horarioVolta: horarioVoltaRandom, duracao: "", preco: precoRandom,classe: classe,qtdAdultos: qtdAdultos)
                        .padding(10)
                }
            }
        }
            
        }
    }


#Preview {
    Pesquisa(origem: "", destino: "", classe: "", qtdAdultos: 1, dataIda: "", siglaIda: "", siglaVolta: "")
}
