//
//  Chapter3page1.swift
//  practice ios
//
//  Created by Farouk Altahesh  on 11/15/23.
//

import SwiftUI

struct Chapter3page1: View {
    @State var isAnimating: Bool = false
    @State var isAnimating2: Bool = false
    @State var isStarsAnimated: Bool = false
    var body: some View {
        
        ZStack{
            Image("Background1")
                .resizable()
                .frame(width: 500,height: 940)
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Image("Man1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 0.9 : 1.0)
                        .frame(height: 550)
                        .ignoresSafeArea()
                        .offset(x: isAnimating ?  -450 : 200)
                    
                    Image("Man2")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 450)
                        .offset(x: isAnimating2 ?  -450 : 200)
                }
            //    .offset(x: isAnimating ?  -400 : 400)
            }
            
        }
        .onAppear(){
            withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false)){
                isAnimating = true
                
            }
            withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false)){
                isAnimating2 = true
                
            }
            
            withAnimation(Animation.easeInOut/*(duration: 0.1)*/.repeatForever(autoreverses: true)){
                isStarsAnimated = true
            }
            
        }
    }
    
    
}
#Preview {
    Chapter3page1()
}
