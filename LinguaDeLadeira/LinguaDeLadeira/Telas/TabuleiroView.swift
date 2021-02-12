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
    @State var paraDeGirarODado = false
    @State var currentStep = 0
    @State var jaentrouUmVezNaoEntraMais = false
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

            
            VStack(alignment: .leading) {
                
                
          //la ursa com hstack
                
                HStack(alignment: .center) {// camada que fica dado e cartas
                    
                    //dado
                    ZStack(alignment: .center){
                        
                        Button(
                            action: {
                                
                                if(!jaentrouUmVezNaoEntraMais){

                                    jaentrouUmVezNaoEntraMais.toggle()
                                    
                                    let d6 = GKRandomDistribution.d6()
                                    var dicedInt = d6.nextInt()
                                    
                                    
                                    if self.currentStep >= 15 {
//                                        presentationMode.wrappedValue.dismiss()
                                        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
                                    }
                                    
                                    if dicedInt > 3 {
                                        dicedInt = Int.random(in: 1..<4)
                                        print("entrou no if pois numero maior que 3")
                                        print(dicedInt)
                                        self.currentStep += dicedInt //atualiza tabuleiro
                                    }
                                    else{
                                        print("NAO entrou no if pois numero MENOR que 3")
                                        print(dicedInt)
                                        self.currentStep += dicedInt // numero é menor que 4
                                    }
                                    
                                    
                                    self.diced = "\(dicedInt)"
//                                    self.dicing.toggle()
                                    
                                   
                                    
                                    if self.dicing == true {
                                    self.paraDeGirarODado = false
                                    self.showCartaPoupUpView = false
//                                        2 seg
                                    self.dicing.toggle()
                                    
                                        
                                    } else {
                                        self.paraDeGirarODado = true
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                            self.showCartaPoupUpView = true //mostra a carta
                                        }
                                        self.jaentrouUmVezNaoEntraMais.toggle()
                                      
                                        
                                    }
                                }
                                
                               
                            },
                            label:{
                                Image("circuloBotaoDado")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 896, height:  140, alignment: .bottomLeading)
                                    .padding(.leading, 40)
                                    .padding(.top, 240)
                                    .shadow(radius:2)
                                    
                                }
                        )  .sheet(isPresented: $showCartaPoupUpView) {
                            CartaPoupUpView()
                        }
                        
                        if self.dicing == true {
                            startAnimation()
                                

                        } else {
                            Image(self.diced) //quando dado parar mostra isso
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 896, height: 70, alignment: .bottomLeading)
                                .padding(.top, 230)
                                .padding(.leading, 103)

                            
                        }
                                
                    }//fim ZStack
                    
                    //cartas
                      
                }//fim HStack

            }//fim da VStack
            
        } //fim da Zstack
    }// fim da view
}// fim da struct


struct TabuleiroView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabuleiroView()
                .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
        }
        //          .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
