//
//  ResumoViagem.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 08/04/26.
//

import SwiftUI

struct ResumoViagem: View {
    @State private var seguro = "Escolha seu seguro"
    @State private var tarifa = "Escolha sua tarifa"
    @State private var estaExpandidoTarifa: Bool = false
    @State private var estaExpandidoSeguro: Bool = false
    
    @State var origem: String
    @State var destino: String
    @State var classe: String
    @State var qtdAdultos: Int
    @State var dataIda: String
    @State var siglaIda: String
    @State var siglaVolta: String
    
    
    @State var precoFixo = "1570,99"
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                Spacer()
                VStack(alignment: .leading, spacing: 5) {
                    HStack(){
                        Spacer()
                        Text("Resumo de sua viagem")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
                
                CardResumoViagem(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta)
                
                Group {
                    DisclosureGroup(tarifa, isExpanded: $estaExpandidoTarifa) {
                        VStack(alignment: .leading) {
                            Divider()
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 15) {
                                    CardSeguro(titulo: "Tarifa 01", beneficios: ["1 bolsa ou mochila até 10 kg", "1 mala pequena até 12 kg", "Remarcação com taxa + diferença de preço"],preco: "00,00")
                                    
                                    CardSeguro(titulo: "Tarifa 02", beneficios: ["1 bolsa ou mochila até 10 kg", "1 mala pequena até 12 kg", "Remarcação com taxa + diferença de preço","Solicitação de Upgrade de cabine com trechos"],preco: "99,00")
                                    CardSeguro(titulo: "Tarifa 03", beneficios: ["1 bolsa ou mochila até 10 kg", "1 mala pequena até 12 kg", "Remarcação com taxa + diferença de preço","Solicitação de Upgrade de cabine com trechos","Seleção de assento Comum"], preco: "143,00")
                                    
                                }
                            }
                        }
                        .padding(.top)
                    }
                    .padding(20)
                    .background(Color.azulClaro)
                    .cornerRadius(10)
                    
                    // Seção Seguro
                    DisclosureGroup(seguro, isExpanded: $estaExpandidoSeguro) {
                        VStack(alignment: .leading) {
                            Divider()
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 15) {
                                    CardSeguro(titulo: "Sem seguro viagem", beneficios: ["O país para onde você vai pode exigir seguro viagem como condição de entrada. Garanta o seu antes de viajar."],preco:"00,00")
                                    
                                    CardSeguro(titulo: "Assistência ouro", beneficios: ["Cancelamento grátis", "Despesas hospitalares de até USD$ 100.000", "Despesas farmacêuticas de até USD$ 2.000","Acesso à Sala Vip em caso de atraso do voo"],preco:"31,00")
                                    
                                    CardSeguro(titulo: "Assistência platina", beneficios: ["Cancelamento grátis", "Despesas hospitalares de até USD$ 150.000", "Despesas farmacêuticas de até USD$ 2.500","Acesso à Sala Vip em caso de atraso do voo"],preco:"37,00")
                                    
                                }
                            }
                        }
                        .padding(.top)
                    }
                    .padding(20)
                    .background(Color.azulClaro)
                    .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .foregroundStyle(Color.azulEscuro)
                
                NavigationLink(destination: TelaLogin(origem: origem, destino: destino, classe: classe, qtdAdultos: qtdAdultos, dataIda: dataIda, siglaIda: siglaIda, siglaVolta: siglaVolta, nomePassageiro: "")) {
                    Text("Continuar compra")
                        .font(Font.custom("Baloo2-Medium", size: 16))
                        .frame(maxWidth: 160, maxHeight: 20)
                        .padding(.vertical, 10)
                        .background(Color.azulMedio)
                        .foregroundColor(Color.bege)
                        .cornerRadius(50)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Spacer()
                        Text("Taxas adicionais")
                            .font(.custom("Baloo 2", size: 16).weight(.medium))
                            .foregroundColor(Color.azulMedio)
                        Spacer()
                    }.padding(.top,20)
                    
                    VStack(spacing: 10) {
                        HStack {
                            Text("Valor total")
                                .font(.custom("Baloo 2", size: 20).weight(.medium))
                                .foregroundColor(Color.bege)
                            
                            Spacer()
                            
                            Text("BRL \(precoFixo)")
                                .font(.custom("Baloo 2", size: 18).weight(.medium))
                                .foregroundColor(Color.bege)
                        }
                        
                        Divider()
                            .background(Color.azulClaro)
                        
                        Text("Incluindo taxas e impostos")
                            .font(.custom("Inter", size: 12).weight(.medium))
                            .foregroundColor(Color.bege)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(20)
                    .background(Color.azulEscuro)
                    //.cornerRadius(10)
                }
                //.padding(.horizontal, 30)
                
                Spacer(minLength: 40)
            }
            .padding(.vertical)
        }
    }
}
#Preview {
    ResumoViagem(origem: "", destino: "", classe: "", qtdAdultos: 2, dataIda: "", siglaIda: "", siglaVolta: "")
}
