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
    static let nomeCid3 = "Lagoinha"
    static let nomeCid4 = "Paris"
    
    var abreviacaoAeroporto = [Padroes.abrevAero1, Padroes.abrevAero2, Padroes.abrevAero3, Padroes.abrevAero4]
    static let abrevAero1 = "GRU"
    static let abrevAero2 = "HND"
    static let abrevAero3 = "MUDAR"
    static let abrevAero4 = "MUDAR"
    
    var horario = [Padroes.horario1, Padroes.horario2, Padroes.horario3, Padroes.horario4]
    static let horario1 = "09:55"
    static let horario2 = "23:55"
    static let horario3 = "MUDAR"
    static let horario4 = "MUDAR"
    
}
