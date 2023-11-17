import SwiftUI
//struct Character{
//    var Name: String
//    var Age: String
//    var Race: String
//    var Gender: String
//}
//
//var mainPrisoner = Character(Name: "", Age: "", Race: "", Gender: "")
//var agreed = Bool(false)

struct Chapter2View: View {
    
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
                    
//                    Image(.prisonCell)
                    Images(namesOfImages: ["prisonCell", "prisonCell", "redBlue", "anor",][currentPage - 1])
                        
                        
                    // introduction()
                    Text(cH2())
                       .frame(minHeight: 150) // Adjusted minHeight
                        .foregroundColor(.white)
                        .padding()
                        .onAppear {
                        }
                        .multilineTextAlignment(.center)
                        .frame(width: 350)
                        .font(.callout)
                    Spacer()
                    
                    HStack(spacing: 20) {
                        CustomButton(action: {
                            if currentPage > 1 {
                                currentPage -= 1
                            }
                        }, label: "Previous")
                        
                        CustomButton(action: {
                            if currentPage < 4 {
                                currentPage += 1
                            }
                            
                        }, label: "Next")
                        
                    }
                    
                    
                    
                }
            }
        }
    }
    
    func cH2() -> String {
        // each chapter's text
        switch currentPage {
        case 1:
            return "One day as I was relaxing in my cold see through chamber surrounded by me keepers an old friend visited me. Well isnt this a suprise, I said with malice i my voice.The main aid in my imprisonment Mr.Frank.To what do I owe the pleasure of this uninvited visit detective, I said with a sarcastic voice.He said he needed my help and I began to become enraged.YOU DARE TO COME IN HERE AND STILL ASK FOR MY HELP!!YOUR THE ONE WHO PUT ME HERE!!I said out of pure malice and started to realize the prison gaurds clutch on their weapons.I took a breather and started to calm down but was still agitated.I told him to leave and don't come back but he reluctantly declined."
        case 2:
            return "He said there is a new serial killer and he needed to know how he thinks.I said that sounded like a personal problem and had nothing to do with me.I turned around and was going to ignore him and continue with my day but something he said caught my attention.What did you say I asked. He said their calling him the new nightmare of the people and that I was old news.Me old news I chuckled. Frank knew just how to get under my skin and use my pride against me.Thats how they caught me, but Im different I thought to myself.Alright Mr.Frank you've peeked my interest it hurts my pride to be forgotten and replaced by a lesser version though I wont help without something in return.In exchange for helping I want my freedom."
        case 3:
            return "Im sick and tired of this place its no fun anymore really.So what do you say Mr.Frank how badley do you need my help.I could see it on his face that Frank was bewildered and with this fact alone I knew my freedom was approaching it just needed a little extra push.Come on Mr.Frank one killer whose served 15 years and may have been born anew for the price of one whose causing more trouble for the public eye.I see that he was thinking immensely couldn't let him think of a way out.Did I also forget to mention the offer is off the table after 20 seconds and you've waisted half.Ten seconds left Mr.Frank the clock is ticking."
        case 4:
            return "As I was about to reach 1 he interupted me and said I decline I don't have the power to make those type of decisions and even if I did theres no way Im letting a monster like you out, he exclaimed. Is that soI exclaimed, Thats a shame since there is no agreement get lost.I turned to walk away.But, he said which made me stop in my tracks, I can have them transfer you to a more comfortable and socially engaging prison instead of complete solitary.I thought for a bit gave a grin and agreed to cooperate with him but only for the next 72 hours."
        default:
            return ""
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
                            .stroke(Color.purple
                                    , lineWidth: 5)
                    )
            }
        }
    }
    struct Images: View {
        var namesOfImages: String

        var body: some View {
            Image(namesOfImages)
 //               .resizable()
 //               .scaledToFit()
//                .aspectRatio(contentMode: .fit)
//                .clipped()
//                .cornerRadius(10)
//                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 1))
        }
    }
}

#Preview {
    Chapter2View()
}
//func Choice() {
//    if agreed == true {
//        print("Thats great that we've come to an agreement")
//    } else  {
//        print("Thats a shame since there is no agreement get lost")
//    }
//}
//
//Choice()
