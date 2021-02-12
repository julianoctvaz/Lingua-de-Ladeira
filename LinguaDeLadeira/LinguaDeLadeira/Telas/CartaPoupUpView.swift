//
//  CartaPoupUpView.swift
//  LinguaDeLadeira
//
//  Created by Juliano Vaz on 11/02/21.
//

import SwiftUI

struct CartaPoupUpView: View {
    
    @State var dicedValue: Int = 0
    @State var imagemNumber: Int = Int.random(in: 10..<18)
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.purple)
                .opacity(0.6)
                .blur(radius: 150.0)
            
            VStack(alignment: .center) {
               
                Button(action:{
//                   UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image("fecharBotao")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60, alignment: .topTrailing)
                }
                .padding(.leading, 150)
                .offset(x: UIScreen.main.bounds.width*(0.02))
                .offset(y: UIScreen.main.bounds.width*(0.05))
                .shadow(radius: 2)
                  
                Spacer()
                    
                    
                }.background(
                    Image("\(imagemNumber)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
        }
       
    }
}


struct CartaPoupUpView_Previews: PreviewProvider {
    static var previews: some View {
        CartaPoupUpView()
            .previewLayout(PreviewLayout.fixed(width: 896, height: 414))
        //          .previewDevice("iPhone 11").previewLayout(PreviewLayout.fixed(width: 896, height: 414))  //esse ai é tamanho do iphone 11, se for ver em outros devices coloca outros tamanhos
    }
}
