//
//  TelaFiltro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//

import SwiftUI

struct TelaFiltro: View {
    // MARK: - Propriedades Computadas
    var dataFormatada: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter.string(from: dataViagem)
    }
    
    func buscarSigla(para nome: String) -> String {
            switch nome {
            case "Guarulhos": return "GRU"
            case "Congonhas": return "CGH"
            case "Galeão":    return "GIG"
            case "Confins":   return "CNF"
            case "Brasília":  return "BRS"
            case "Salvador":  return "SSA"
            default:          return "S/I" // Sem identificação
            }
        }
    
    // MARK: - Estados
    @State var origem = ""
    @State var dataViagem = Date()
    @State var qtdAdultos = 1
    @State var siglaIda = ""
    
    @State var qtdCriancas = 0
    @State var destino: String
    @State var estaExpandido: Bool = false
    @State var classes = "Classe"
    @State var mostrarConfirmacao: Bool = false
    
    let origens: [String] = ["Guarulhos", "Congonhas", "Galeão", "Confins","Brasília","Salvador"]
    
    var destinoEhValido: Bool {
        origens.contains { $0.lowercased() == origem.trimmingCharacters(in: .whitespaces).lowercased() }
    }
    
    var sugestoes: [String] {
        if origens.isEmpty || destinoEhValido {
            return []
        } else {
            return origens.filter { $0.lowercased().contains(origem.lowercased()) }
        }
    }

    // MARK: - Body
    var body: some View {
        ScrollView { // Adicionado ScrollView para telas menores
            VStack(spacing: 20) {
                Text("Para onde vamos?")
                    .font(Font.custom("Baloo2-Medium", size: 20))
                    .foregroundStyle(Color.azulMedio)
                    .padding(.top)
                
                VStack{
                    HStack{
                        Text("Apenas Ida")
                            .foregroundStyle(Color.verde)
                            .frame(maxWidth: 110, maxHeight: 32)
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .background(Color.azulEscuro)
                            .cornerRadius(50)
                        Spacer()
                            Text("Ida e Volta")
                                .foregroundStyle(Color.azulEscuro)
                                .frame(maxWidth: 110, maxHeight: 32)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .background(Color.azulClaro)
                                .cornerRadius(50)
                        Spacer()
                            Text("Multidestino")
                                .foregroundStyle(Color.azulEscuro)
                                .frame(maxWidth: 110, maxHeight: 32)
                                .font(Font.custom("Baloo2-Medium", size: 16))
                                .background(Color.azulClaro)
                                .cornerRadius(50)
                    }.padding(20)
                    }

                VStack(spacing: 16) {
                    // SEÇÃO: ORIGEM E DESTINO
                    VStack(spacing: 10) {
                        Text("VIAGEM")
                            .font(Font.custom("Baloo2-Medium", size: 14))
                            .foregroundStyle(Color.azulMedio)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack {
                            TextField("Origem", text: $origem)
                                .foregroundStyle(Color.azulEscuro)
                            
                            // Lista de Sugestões
                            if !sugestoes.isEmpty {
                                VStack(alignment: .leading, spacing: 0) {
                                    ForEach(sugestoes, id: \.self) { item in
                                        Button(action: {
                                            origem = item
                                        }) {
                                            HStack {
                                                Image(systemName: "airplane")
                                                Text(item)
                                                Spacer()
                                            }
                                            .padding()
                                            .foregroundColor(.azulEscuro)
                                        }
                                        Divider()
                                    }
                                }
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4)
                            }
                            
                            Divider()
                            
                            TextField("Destino", text: $destino)
                                .foregroundStyle(Color.azulEscuro)
                        }
                    }
                    .padding()
                    .background(Color.branco)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.azulEscuro, lineWidth: 1)
                    )

                    // SEÇÃO: PERÍODO
                    VStack(alignment: .leading, spacing: 12) {
                        Text("PERÍODO DE VIAGEM")
                            .font(Font.custom("Baloo2-Medium", size: 14))
                            .foregroundColor(Color.azulMedio)

                        DatePicker("Data de ida", selection: $dataViagem, displayedComponents: .date)
                            .datePickerStyle(.compact)
                            .foregroundColor(Color.azulEscuro)
                            .tint(Color.azulMedio)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.azulEscuro, lineWidth: 1)
                    )

                    // SEÇÃO: CLASSE
                    DisclosureGroup(classes, isExpanded: $estaExpandido) {
                        VStack(alignment: .leading, spacing: 15) {
                            Divider()
                            Button("Econômica") { classes = "Econômica"; estaExpandido = false }
                            Divider()
                            Button("Executiva") { classes = "Executiva"; estaExpandido = false }
                            Divider()
                            Button("Primeira Classe") { classes = "Primeira Classe"; estaExpandido = false }
                        }
                        .padding(.vertical, 5)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                    .foregroundColor(Color.azulMedio)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.azulEscuro, lineWidth: 1)
                    )

                    // SEÇÃO: PESSOAS
                    VStack(alignment: .leading, spacing: 10) {
                        Text("PESSOAS")
                            .font(Font.custom("Baloo2-Medium", size: 14))
                            .foregroundStyle(Color.azulMedio)
                        
                        Stepper(value: $qtdAdultos, in: 1...9) {
                            HStack {
                                Label("Adultos", systemImage: "person.fill")
                                Spacer()
                                Text("\(qtdAdultos)")
                            }
                        }
                        
                        Stepper(value: $qtdCriancas, in: 0...9) {
                            HStack {
                                Label("Crianças", systemImage: "person.fill")
                                Spacer()
                                Text("\(qtdCriancas)")
                            }
                        }
                    }
                    .padding()
                    .foregroundColor(Color.azulEscuro)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.azulEscuro, lineWidth: 1)
                    )
                }
                .padding(.horizontal, 20)

                // BOTÃO DE BUSCA
                // IMPORTANTE: Aqui passamos 'dataFormatada' (String) em vez de 'dataViagem' (Date)
                NavigationLink(destination: Pesquisa(
                    origem: origem,
                    destino: destino,
                    classe: classes,
                    qtdAdultos: qtdAdultos,
                    dataIda: dataFormatada,
                    siglaIda: buscarSigla(para: origem),
                    siglaVolta: buscarSigla(para: destino))) {
                    Text("Encontrar melhor preço")
                        .font(Font.custom("Baloo2-Medium", size: 16))
                        .frame(maxWidth: 200)
                        .padding(12)
                        .background(Color.azulMedio)
                        .foregroundColor(Color.bege)
                        .cornerRadius(50)
                }
                .padding(.vertical, 20)
                
                Spacer()
            }
        }
        .background(Color.branco.ignoresSafeArea())
    }
}

// MARK: - Preview
#Preview {
    NavigationStack {
        TelaFiltro(destino: "São Paulo")
    }
}
