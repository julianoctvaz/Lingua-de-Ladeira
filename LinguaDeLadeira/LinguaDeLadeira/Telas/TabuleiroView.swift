//
//  TabuleiroView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI
import GameplayKit


var diceImages: [UIImage]! = [UIImage(named: "Dado 1")!, UIImage(named: "Dado 2")!, UIImage(named: "Dado 3")!]

let animationDice = UIImage.animatedImage(with: diceImages, duration: 2.0)


struct TabuleiroView: View {
    
    @State var dicing = false
    @State var diced = "Dado 1"
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
//            HStack(alignment: .center) {
//
//                Spacer()
//
//                Text("LaUrsa")
//            }
//            .padding()
            
            Spacer()
            
            HStack(alignment: .center) {
                
                Button(action: {
                    
                },
                label: {
                    
                    
                    ZStack(alignment: .center) {
                   
                        
                    
                    Image("circuloBotaoDado")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140, height:  140, alignment: .bottomLeading)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)
                        
                        Image("Dado 1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60, alignment: .center)
                            .padding(.leading, 30)
                            .padding(.bottom, 30)
                            
                    }
                    
                })
                    
                
                Spacer()
          
                
//                ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
//                    Text("cartas")
//                })
                
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
