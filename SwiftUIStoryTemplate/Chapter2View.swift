import SwiftUI
struct Character{
    var Name: String
    var Age: String
    var Race: String
    var Gender: String
}

var mainPrisoner = Character(Name: "", Age: "", Race: "", Gender: "")


struct Chapter2View: View {
    
    @State private var userInput: String = ""
    
    var body: some View {
        VStack{
            ZStack(alignment: .top) {
                
                               
                Text("I turned around and was going to ignore him and continue with my day but something he said caught my attention.What did you say I asked. He said their calling him the new nightmare of the people and that I was old news.Me old news I chuckled. The detective knew just how to get under my skin and use my pride against me.Thats how they caught me, but Im different I thought to myself.Alright detective you've peeked my interest it hurts my pride to be forgotten and replaced by a lesser version though I wont help without something in return.In exchange for helping I want my freedom.Im sick and tired of this place its no fun anymore really.")
                
                //  checkAge()
                
                //                Text("So what do you say detective how badley do you need my help.")
                //                Text("I could see it on his face the detective was bewildered and with this fact alone I knew my freedom was approaching it just needed a little extra push.")
                //                Text("Come on detective one killer for the price of another whose causing more trouble for the public eye.")
                //                Text("I see that he was thinking immensely couldn't have that now can we.")
                //                Text("Did I also forget to mension the offer is off the table after 20 seconds and you've waisted half.")
                //                Text("Ten seconds left detective the clock is ticking")
                ////               for countDown in stride(from: 10, to: 1, by: -1) {
                ////                    print(countDown)
                ////                }
                //                Text("I decline I don't have the power to make those type of decisions and even if I did theres no way Im letting a monster like you out, he exclaimed. Is that so, I exclaimed")
                //              //  Choice()
                //                Text("I turned to walk away.")
                //                Text("But, he said which made me stop in my tracks, I can have them transfer you to a more comfortable and socially engaging prison instead of complete solitary.")
                //
                //                Text("I thought for a bit gave a grin and agreed to cooperate with him but only for the next 72 hours.")
                
                
            }
        }
    }
}
#Preview {
    Chapter2View()
}
