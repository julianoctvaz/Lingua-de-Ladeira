//
//  InicioView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI

struct InicioView: View {
    var body: some View {
        VStack{
            Image("linguaDeLadeiraTitulo")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.3, alignment: .center)
            
            Spacer()
            
           
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Button(
                    action: {
                        //acao da navegacao
                    },
                    label: {
                        Image("botaoIniciar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.1, alignment: .center)
                    }
                )
     
                Button(
                    action: {
                        //acacao para ir para o onboarding de novo
                    },
                    label: {
                        Image("botaoComoJogar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.1, alignment: .center)
                    }
                )
            }
            
            Spacer()
               
        }
        .background(
            Image("fundo")
            .resizable()
            .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height, alignment: .center)
        )
        
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
//            .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
