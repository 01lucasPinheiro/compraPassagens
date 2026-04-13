//
//  TelaFiltro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//

import SwiftUI

struct TelaFiltro: View {
    @State  var origem = ""
    @State  var dataViagem: Date = Date()
    @State  var qtdAdultos = 1
    @State  var qtdCriancas = 0
    
    @State var destino: String
    
    @State  var estaExpandido: Bool = false
    @State  var classes = "Classe"
    @State  var mostrarConfirmacao: Bool = false
    
    let origens: [String] = ["Guarulhos", "Congonhas", "Galeão", "Confins"]
    
    // Lógica de validação: remove espaços e ignora maiúsculas/minúsculas
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

    
    var body: some View {
        VStack{
            Text("Para onde vamos ?")
                .font(Font.custom("Baloo2-Medium", size: 20))
                .foregroundStyle(Color.azulMedio)
                .padding()

        VStack(spacing: 16) {
            VStack(spacing: 10) {
                
                Text("VIAGEM")
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulMedio)
                    .frame(maxWidth: .infinity, alignment: .leading)
              
                VStack{
                
                    TextField("Origem", text: $origem)
                        .foregroundStyle(Color.azulMedio)
                        //.disabled(!destinoEhValido)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(sugestoes, id: \.self) { item in
                            Button(action: {
                                origens = item // Preenche o campo automaticamente
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
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    // Ajuste para a lista flutuar levemente
                    .padding(.top, 5)
                }
}

                Divider()
                TextField("\(destino)", text: $destino)
                
            }
            .padding()
            .background(Color.branco)
            .foregroundColor(Color.azulEscuro)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.azulEscuro)
            )
            VStack(alignment: .leading, spacing: 12) {
                Text("PERIODO DE VIAGEM")
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundColor(Color.azulMedio)
                

                    DatePicker("Data de ida", selection: $dataViagem, displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .foregroundColor(Color.azulEscuro)
            }
            .padding()
            .font(Font.custom("Inter", size: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.azulEscuro)
                
            )
            
            
            VStack{                
                HStack{
                    VStack(spacing: 10) {
                        
                        DisclosureGroup(classes, isExpanded: $estaExpandido) {
                            VStack(alignment: .leading) {
                                Divider()
                                Button("Econômica") {
                                    classes = "Econômica"
                                    estaExpandido = false
                                }
                                Divider()
                                Button("Executiva") {
                                    classes = "Executiva"
                                    estaExpandido = false
                                }
                                Divider()
                                Button("Primeira Classe") {
                                    classes = "Primeira Classe"
                                    estaExpandido = false
                                }
                            }
                            .padding()
                        }
                        .padding()
                        .foregroundColor(Color.azulMedio)
                        .background(Color.branco)
                        .cornerRadius(10)
                    
                    }.foregroundStyle(Color.azulMedio)
                }
                
                
            }
            .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.azulEscuro))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("PESSOAS")
                    .font(Font.custom("Baloo2-Medium", size: 14))
                    .foregroundStyle(Color.azulMedio)
                
                Stepper(value: $qtdAdultos, in: 1...9) {
                    HStack {
                        Label("Adultos", systemImage: "person.fill")
                            .foregroundColor(Color.azulEscuro)
                        Spacer()
                        Text("\(qtdAdultos)")
                            .font(Font.custom("Inter", size: 16))
                            .foregroundColor(Color.azulMedio)
                    }
                }.foregroundColor(Color.azulMedio)
                
                Stepper(value: $qtdCriancas, in: 0...9) {
                    HStack {
                        Label("Crianças", systemImage: "person.fill")
                            .foregroundColor(Color.azulEscuro)
                        Spacer()
                        Text("\(qtdCriancas)")
                            .font(Font.custom("Inter", size: 16))
                            .foregroundColor(Color.azulMedio)
                    }
                }
                
                .background(Color.branco)
                .cornerRadius(10)
                .foregroundColor(Color.azulMedio)
                
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.azulEscuro)
            )
        }.padding(20)
        NavigationLink(destination: Pesquisa()) {
            Text("Encontrar melhor preço")
                .font(Font.custom("Baloo2-Medium", size: 16))
                .frame(maxWidth:200)
                .padding(10)
                .background(Color.azulMedio)
                .foregroundColor(Color.bege)
                .cornerRadius(50)
        }.padding(20)
        Spacer()
        }
    }
}

#Preview {
    TelaFiltro(destino: "São Paulo")
}
