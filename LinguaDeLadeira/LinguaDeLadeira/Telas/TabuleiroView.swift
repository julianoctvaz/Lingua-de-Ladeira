//
//  TabuleiroView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 10/02/21.
//

import SwiftUI
import GameplayKit


var diceImages: [UIImage]! = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!]

let animationDice = UIImage.animatedImage(with: diceImages, duration: 2.0)

struct startAnimation: UIViewRepresentable {
    
    func makeUIView(context: Self.Context) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let myImage = UIImageView(frame: CGRect(x: 15, y: 180, width: 90, height: 75))
        myImage.contentMode = UIView.ContentMode.scaleAspectFit
        myImage.image = animationDice
        myView.addSubview(myImage)
        
        return myView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<startAnimation>) {
        print("updated!")
    }
}

struct TabuleiroView: View {
    
    @State var dicing = false
    @State var diced = "1"
    @State var btnName = "Roll it"
    
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
            
            HStack(alignment: .center) {// camada que fica dado e cartas
                
                //dado
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                
                    Button(
                        action: {
                            let d6 = GKRandomDistribution.d6()
                            var dicedInt = d6.nextInt()
                            
                            if dicedInt > 4 {
                                dicedInt = Int.random(in: 1..<4)
                            }
                            
                            self.diced = "\(dicedInt)"
                            self.dicing.toggle()
                            
                            if self.dicing == true {
                                self.btnName = "Done"
                            } else {
                                self.btnName = "Rool it"
                            }
                        }
                    )
                   
                  
                    
                    {
                        Text(self.btnName).font(.largeTitle)
                    }
                    
                    //                Spacer()
                    
                    if self.dicing == true {
                        startAnimation()
                    } else {
                        Image(self.diced)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 75)
                        //                    let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
                        //                    let myImage = UIImageView(frame: CGRect(x: 15, y: 50, width: 90, height: 75))
                    }
                }//fim VStack
                .background(
                    Image("circuloBotaoDado")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140, height:  140, alignment: .bottomLeading)
                        .padding(.leading, 30)
                        .padding(.bottom, 30))
            
//                Spacer()
                
                    Text("cartas")
                //cartas
                HStack(alignment: .center) {
                    Spacer()
                }
                
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
