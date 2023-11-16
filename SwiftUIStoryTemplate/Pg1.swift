//
//  Pg1.swift
//  SwiftUIStoryTemplate
//
//  Created by leiland kirby on 11/16/23.
//

import SwiftUI

struct Pg1: View {
    @State private var currentPage: Int = 1
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
                    Text("One day as I was relaxing in my cold see through chamber surrounded by me keepers an old friend visited me.Well isnt this a suprise, I said with malice i my voice.The main aid in my imprisonment Detective Frank.To what do I owe the pleasure of this uninvited visit detective, I said with a sarcastic voice.He said he needed my help and I began to become enraged.YOU DARE TO COME IN HERE AND STILL ASK FOR MY HELP!!YOUR THE ONE WHO PUT ME HERE!!I said out of pure malice and started to realize the prison gaurds clutch on their weapons.I took a breather and started to calm down but was still agitated.I told him to leave and don't come back but he reluctantly declined.He said there is a new serial killer and he needed to know how he thinks.I said that sounded like a personal problem and had nothing to do with me.")
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
    Pg1()
}
