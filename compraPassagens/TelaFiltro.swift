//
//  TelaFiltro.swift
//  compraPassagens
//
//  Created by LUCAS PINHEIRO DA COSTA PEDROSA on 01/04/26.
//

import SwiftUI

struct TelaFiltro: View {
    @State private var origem = ""
    @State private var destino = ""
    @State private var dataViagem: Date = Date()
    @State private var qtdAdultos = 1
    @State private var qtdCriancas = 0
    var body: some View {
        VStack{
            Text("Para onde vamos ?")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.blue)
                .padding()

        VStack(spacing: 16) {
            VStack(spacing: 10) {
                TextField("Origem", text: $origem)
                Divider()
                TextField("Destino", text: $destino)
                
            }
            .padding()
            .background(Color(red: 100/255, green: 200/255, blue: 50/255, opacity: 0.05))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
            )
            VStack(alignment: .leading, spacing: 12) {
                Text("Período da viagem")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.leading, 5)
                

                    DatePicker("Data de ida", selection: $dataViagem, displayedComponents: .date)
                        .datePickerStyle(.compact)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
            )
            
            VStack{
                Text("Escolha a classe")
                
                Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Economica").tag(1)
                    Text("Executiva").tag(2)
                }
                
                
            }
            .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Passageiros")
                .font(.headline)
                
                Stepper(value: $qtdAdultos, in: 1...9) {
                    HStack {
                        Label("Adultos", systemImage: "person.fill")
                        Spacer()
                        Text("\(qtdAdultos)")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                Stepper(value: $qtdCriancas, in: 0...9) {
                    HStack {
                        Label("Crianças", systemImage: "person.fill")
                        Spacer()
                        Text("\(qtdCriancas)")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                
                .background(Color(.white))
                .cornerRadius(10)
                
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
            )
        }.padding(20)
        NavigationLink(destination: Pesquisa()) {
            Text("Buscar Voos")
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }.padding(20)
        Spacer()
        }
    }
}
#Preview {
    TelaFiltro()
}
