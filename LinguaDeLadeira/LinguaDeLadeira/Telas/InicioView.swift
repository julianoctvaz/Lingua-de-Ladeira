//
//  InicioView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI

struct InicioView: View {
    
    @State var showTabuleiroView: Bool = false
    
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
                        self.showTabuleiroView.toggle()
                    },
                    label: {
                        Image("botaoIniciar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.1, alignment: .center)
                            .shadow(radius:2)
                    }
                )
                .fullScreenCover(isPresented: $showTabuleiroView) {
                    TabuleiroView()
                }
     
                /*
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
            */
            }
            
            Spacer()
            Spacer()
               
        }
        .background(
            Image("fundo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
          
            
            
            
        )  .ignoresSafeArea()
        
    }
}

struct InicioView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
//            .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
