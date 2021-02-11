//
//  TabuleiroView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI

struct TabuleiroView: View {
    var body: some View {
        VStack(alignment: .leading) {
         
          
            HStack(alignment: .center) {
                
                Spacer()
                
                Text("LaUrsa")
            }
            .padding()
            
            Spacer()
            
            HStack(alignment: .center) {
              
                Button(
                    action: {
                        //acao da navegacao
                    },
                    label: {
                        Image("circuloBotaoDado")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.3, alignment: .bottomLeading)
                    }
                )

                Spacer()
                
                ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
                    Text("cartas")
                })
                
            }//fim HStack

            
            
        }//fim VStack
            .background(
                Image("tabuleiro")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            )
                
    }
}

struct TabuleiroView_Previews: PreviewProvider {
    static var previews: some View {
        TabuleiroView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
        //          .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
