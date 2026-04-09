//
//  Padrões.swift
//  compraPassagens
//
//  Created by TAIS AKEMI KAWAGUTI SILVA on 06/04/26.
//

import Foundation
import SwiftUI

struct Padroes {
    // para colocar na TAB VIEW
    static let homeString = "Home"
    static let likeString = "Gostei"
    static let passagensString = "Passagens"
    static let perfilString = "Perfil"
    
    // CARDS PASSAGENS
    var nomeCidade = [Padroes.nomeCid1, Padroes.nomeCid2, Padroes.nomeCid3, Padroes.nomeCid4]
    static let nomeCid1 = "São Paulo"
    static let nomeCid2 = "Tóquio"
    static let nomeCid3 = "Doha"
    static let nomeCid4 = "Paris"
    
    var abreviacaoAeroporto = [Padroes.abrevAero1, Padroes.abrevAero2, Padroes.abrevAero3, Padroes.abrevAero4]
    static let abrevAero1 = "GRU"
    static let abrevAero2 = "HND"
    static let abrevAero3 = "DOH"
    static let abrevAero4 = "MUDAR"
    
    var horarioCard = [Padroes.horarioCard1, Padroes.horarioCard2, Padroes.horarioCard3, Padroes.horarioCard4]
    static let horarioCard1 = "09:55"
    static let horarioCard2 = "23:55"
    static let horarioCard3 = "06:00"
    static let horarioCard4 = "MUDAR"
    
    var diaCard = [Padroes.diaCard1, Padroes.diaCard2, Padroes.diaCard3, Padroes.diaCard4]
    static let diaCard1 = "Sáb. 19/09"
    static let diaCard2 = "Dom. 20/09"
    static let diaCard3 = "(+1) Dom. 20/09"
    static let diaCard4 = "MUDAR"
    
    var precoCard = [Padroes.precoCard1, Padroes.precoCard2, Padroes.precoCard3, Padroes.precoCard4]
    static let precoCard1 = "BRL 5.844,00"
    static let precoCard2 = "23:55"
    static let precoCard3 = "MUDAR"
    static let precoCard4 = "MUDAR"
    
    var classeCard = [Padroes.classeCard1, Padroes.classeCard2, Padroes.classeCard3, Padroes.classeCard4]
    static let classeCard1 = "Econômica"
    static let classeCard2 = "Executiva"
    static let classeCard3 = "Primeira Classe"
    static let classeCard4 = "MUDAR"
}

struct PadraoFiltro: View {
    var text: String
    var backCor: Color
    var txtCor: Color
    
    var body: some View {
        Text(text)
            .font(.custom("Baloo 2", size: 12).weight(.medium))
            .foregroundColor(txtCor)
            .frame(maxWidth: .infinity) // Faz os botões dividirem a largura da tela igualmente
            .frame(height: 35)
            .background(backCor)
            .cornerRadius(5)
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
        return path
    }
}

//securityfield
