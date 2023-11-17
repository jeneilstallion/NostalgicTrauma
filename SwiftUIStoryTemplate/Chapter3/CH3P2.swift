//
//  CH3P2.swift
//  practice ios
//
//  Created by Farouk Altahesh  on 11/15/23.
//

import SwiftUI

struct CH3P2: View {
    var body: some View {

            ZStack{
                Color.black
                    .ignoresSafeArea()
            VStack{
                Image("Boy")
                    .resizable()
                    .clipShape(.rect(cornerRadius: 20))
                    .scaledToFit()
                    .frame(width: 350, height: 300)
                
                Text("You may or may have not heard of the story of Amarjeet Sada. The world's youngest serial killer. Born in Mushahar, India in 1998. Now this is not your typical child. Dark beady eyes and always sinisterly smiling after every chaos he creates...")
                    .foregroundStyle(Color.white)
                    .bold()
                    .padding()
                Text("Add")
                    .foregroundStyle(Color.white)
                    .bold()
                    .padding()
                
                
                
                }
                
                
                    
                
            }
        }
    }

#Preview {
    CH3P2()
}
