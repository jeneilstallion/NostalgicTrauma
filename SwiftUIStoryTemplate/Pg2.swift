//
//  Pg2.swift
//  SwiftUIStoryTemplate
//
//  Created by leiland kirby on 11/16/23.
//

import SwiftUI

struct Pg2: View {
    @State private var currentPage: Int = 2
    var body: some View {
        VStack{
            ZStack(alignment: .top) {
                Color.black
                    .ignoresSafeArea()
                VStack{
                    
                    Text("Chapter 2")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    Text("Option 1")
                    
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Image(.prisonCell)
                    
                    // introduction()
                    Text("I turned around and was going to ignore him and continue with my day but something he said caught my attention.What did you say I asked. He said their calling him the new nightmare of the people and that I was old news.Me old news I chuckled. The detective knew just how to get under my skin and use my pride against me.Thats how they caught me, but Im different I thought to myself.Alright detective you've peeked my interest it hurts my pride to be forgotten and replaced by a lesser version though I wont help without something in return.In exchange for helping I want my freedom.Im sick and tired of this place its no fun anymore really.")
                        .foregroundColor(.white)
                        .font(.callout)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    
                    HStack(spacing: 20) {
                        CustomButton(action: {
                            if currentPage > 1 {
                                currentPage -= 1
                            }
                        }, label: "Previous")

                        CustomButton(action: {
                            if currentPage < 5 {
                                currentPage += 1
                            }
                        }, label: "Next")
                    }


                        
                    }
                }
                    }
                }
    struct CustomButton: View {
        var action: () -> Void
        var label: String

        var body: some View {
            Button(action: action) {
                Text(label)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.yellow, lineWidth: 2)
                    )
            }
        }
    }

            }
        
#Preview {
    Pg2()
}
