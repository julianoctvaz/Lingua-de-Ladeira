//
//  InicioView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
//            .previewDevice("iPhone 11") esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
