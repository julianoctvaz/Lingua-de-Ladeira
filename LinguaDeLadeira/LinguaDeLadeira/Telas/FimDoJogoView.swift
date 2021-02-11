//
//  FimDoJogoView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI

struct FimDoJogoView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            Spacer()
            
            Image("laUrsaTelaFimDeJogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width*0.7, height:  UIScreen.main.bounds.height*0.35, alignment: .center)
            
            Spacer()
            
            Button(
                action: {
                    //acacao para ir para o onboarding de novo
                },
                label: {
                    Image("jogarNovamente")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.14, alignment: .center)
                }
            )
            
            Spacer()
    
        }
    }
}

struct FimDoJogoView_Previews: PreviewProvider {
    static var previews: some View {
        FimDoJogoView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
//          .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
