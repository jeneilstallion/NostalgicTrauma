import SwiftUI


struct Chapter4View: View {
    var body: some View {
        ZStack{
           Image("bookcover")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
        
        
        Text("***Chapter IV***").bold()
        Text("There lived a child named Jakill who had grown up never having the chance to meet his parents. His mother, had passed away during childbirth, leaving him to face the world alone. As for his father, Michael, he had been in jail for as long as Jakill could remember.").bold()
        Text("My life had been filled with uncertainty and solitude. I was raised in an orphanage, surrounded by caretakers and other children. I always prayed for the warmth and love of a family. I used to spend my days watching other kids being picked up by their parent    , attending school events with their families, and sharing stories of their mom and dad.").bold()
        Text("As I grew older, I became more curious about my father. I knew little about him except for the fact that he was incarcerated. I always wondered what my dad was like and why he was in jail. These questions fueled my desire to find answers.").bold()
        Text("On my 18th birthday, I decided it was time to learn more about my father. I began by searching through old records, taking genealogy tests, and speaking to the orphanage staff. I discovered that my father's name was Micheal, and he was imprisoned for murder.").bold()
        Text("I was in complete shock when I learned this information and wondered why my father was even in a situation that led to this outcome. I reached out to my father through letters, asking him about his life, his dreams, and his longing to meet the son that he never met. The letters weren't easy to write, but I felt a sense of connection I had never experienced before.").bold()
        Text("Months turned into years, and my determination to establish a bond with my father never happened. I attended college, earned a degree, and even started a small business but unfortunately, my father's parents were never there to see my success.").bold()
        Text("As a couple of years passed, I finally received a response from my so-called Father, Micheal. He expressed his love and longing to see his me. 'Son, I am so proud of you,' he said. I had changed during his time in prison, and I am determined to set a better example for his you. The authorities had decided to grant him parole, and he was released.").bold()
            
        Text("We finally met at the gates of the prison, both of our eyes filled with tears. It was a moment that we both had dreamed of. This was only the beginning of our journey. We have a lot of catching up to do.").bold()
            
        TabView{}
        
        Image("bookcover")
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    Chapter4View()
}

