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
    @State var currentStep = 0
    
    @State var showCartaPoupUpView: Bool = false
    
    var body: some View {
        ZStack {
            if (currentStep == 0) {
                Image("tabuleiro")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 1) {
                Image("tabuleiro1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 2) {
                Image("tabuleiro2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 3) {
                Image("tabuleiro3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 4) {
                Image("tabuleiro4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 5) {
                Image("tabuleiro5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 6) {
                Image("tabuleiro6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 7) {
                Image("tabuleiro7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 8) {
                Image("tabuleiro8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 9) {
                Image("tabuleiro9")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 10) {
                Image("tabuleiro10")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 11) {
                Image("tabuleiro11")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 12) {
                Image("tabuleiro12")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 13) {
                Image("tabuleiro13")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            else if(currentStep == 14) {
                Image("tabuleiro14")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width*1.2, height: UIScreen.main.bounds.height*0.8, alignment: .center)
            }
            HStack{
                Spacer()
                Spacer()
                Spacer()
            Button(
                action: {
                    //fazer continhas
                    let x = Int.random(in: 1...3)
                    currentStep += x
                    print(x)
                },
                label: {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.4, height:  UIScreen.main.bounds.height*0.1, alignment: .center)
                        .shadow(radius:2)
                }
            )
            }
            //aqui termina o que iris fez
            
            VStack(alignment: .leading) {
                
                
                //            HStack(alignment: .center) {
                //
                //                Spacer()
                //
                //                Text("LaUrsa")
                //            }
                //            .padding()
                
                // Spacer()
                
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
                                
                                self.showCartaPoupUpView = true //mostra a carta
                                
                                if self.dicing == true {
                                    self.btnName = "Done"
                                    self.showCartaPoupUpView = false
                                } else {
                                    self.btnName = "Rool it"
                                    
                                }
                            }
                        )
                        
                        {
                            Text(self.btnName).font(.largeTitle)
                        }
                        .sheet(isPresented: $showCartaPoupUpView) {
                            CartaPoupUpView()
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
            
        }//fim da ZStack
    }
}


struct TabuleiroView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabuleiroView()
                .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
        }
        //          .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
