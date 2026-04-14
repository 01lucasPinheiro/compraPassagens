//
//  ResumoViagem.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 08/04/26.
//

import SwiftUI

struct ResumoViagem: View {
    @State private var seguro = "Escolha seu seguro"
    @State private var estaExpandido: Bool = false
    
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
        
        ScrollView(.vertical, showsIndicators: true) {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(spacing: 20){
                    
                    VStack(spacing: 2) {
                        Text("Resumo de sua viagem")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                    }
                    
                    CardResumoViagem(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta)
                    
//                    VStack {
//                        Text("Horários em hora local de cada cidade")
//                            .font(.custom("Inter", size: 12))
//                            .foregroundColor(Color.azulMedio)
//                    }
                    
                    VStack{
                        DisclosureGroup(seguro, isExpanded: $estaExpandido) {
                            VStack(alignment: .leading) {
                                Divider()
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack{
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        
                                    }
                                }
                            }
                            .padding()
                        }
                        //.padding()
                        .padding(20)
                        .background(Color.azulClaro)
                        .foregroundStyle(Color.azulEscuro)
                        .font(Font.custom("Inter", size: 14))
                        .cornerRadius(10)
                        
                    }.padding(30)
                    
                    VStack{
                        DisclosureGroup(seguro, isExpanded: $estaExpandido) {
                            VStack(alignment: .leading) {
                                Divider()
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack{
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        CardSeguro(titulo: "Tarifa 01", beneficios: ["Assistência 24h",
                                                                                     "Cobertura contra roubo",
                                                                                     "Guincho ilimitado",
                                                                                     "Proteção de vidros"])
                                        
                                    }
                                }
                            }
                            .padding()
                        }
                        //.padding()
                        .padding(20)
                        .background(Color.azulClaro)
                        .foregroundStyle(Color.azulEscuro)
                        .font(Font.custom("Inter", size: 14))
                        .cornerRadius(10)
                        
                    }.padding(30)
                    
                    NavigationLink(destination: TelaLogin(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: "" )){
                        Text("Continuar compra")
                            .font(Font.custom("Baloo2-Medium", size: 16))
                            .frame(maxWidth:150)
                            .padding(5)
                            .background(Color.azulMedio)
                            .foregroundColor(Color.bege)
                        .cornerRadius(50)}
                    
                    Spacer(minLength: 40)
                    VStack (spacing: 20){
                        Text("Taxas adicionais")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                    }
                    
                    VStack (spacing: 10){
                        
                        HStack{
                            Text("Valor total")
                                .font(.custom("Baloo 2", size:20).weight(.medium))
                                .foregroundColor(Color.bege)
                            
                            Spacer()
                            
                            Text("BRL \(precoFixo)")
                                .font(.custom("Baloo 2", size: 16).weight(.medium))
                                .foregroundColor(Color.bege)
                        }
                        
                        // Linha divisória (Substitui o Rectangle com stroke)
                        Divider()
                            .background(Color.azulClaro)
                        
                        // Informação adicional
                        Text("Incluindo taxas e impostos")
                            .font(.custom("Inter", size: 12).weight(.medium))
                            .foregroundColor(Color.bege)
                    }
                    .padding(20)
                    .frame(width: 350, height: 90)
                    .cornerRadius(10)
                    .background(Color.azulMedio)
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    ResumoViagem(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "")
}
