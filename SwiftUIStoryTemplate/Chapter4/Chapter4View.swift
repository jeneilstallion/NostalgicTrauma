import SwiftUI

struct Chapter4View: View {
    @State private var userInput: String = ""
    @State private var showWarning: Bool = true

    var body: some View {
        ZStack {
            if showWarning {
                WarningView(userInput: $userInput, showWarning: $showWarning)
            } else {
                NavigationView {
                    MainStoryView()
                        .navigationBarHidden(true)
                }
            }
        }
    }
}

struct WarningView: View {
    @Binding var userInput: String
    @Binding var showWarning: Bool

    var body: some View {
        VStack {
            Image("bookcover")
                .resizable()

            Text("Warning: This chapter contains sensitive content. Reader discretion is advised.")
                .foregroundColor(.red)
                .padding()

            TextField("Type 'CONFIRM' to proceed", text: $userInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Continue") {
                if userInput.uppercased() == "CONFIRM" {
                    showWarning = false
                }
            }
            .padding()
        }
        .padding()
    }
}

struct MainStoryView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack{
                    Image("CH4W")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .padding()

                    Text("""
                        There lived a child named Jakill who had grown up never having the chance to meet his parents. His mother, had passed away during childbirth, leaving him to face the world alone. As for his father, Michael, he had been in jail for as long as Jakill could remember. My life had been filled with uncertainty and solitude. I was raised in an orphanage, surrounded by caretakers and other children. I always prayed for the warmth and love of a family. I used to spend my days watching other kids being picked up by their parents, attending school events with their families, and sharing stories of their mom and dad. As I grew older, I became more curious about my father. I knew little about him except for the fact that he was incarcerated. I always wondered what my dad was like and why he was in jail. These questions fueled my desire to find answers. On my 18th birthday, I decided it was time to learn more about my father. I began by searching through old records, taking genealogy tests, and speaking to the orphanage staff. I discovered that my father's name was Micheal, and he was imprisoned for murder.I was in complete shock when I learned this information and wondered why my father was even in a situation that led to this outcome. I reached out to my father through letters, asking him about his life, his dreams, and his longing to meet the son that he never met. The letters weren't easy to write, but I felt a sense of connection I had never experienced before. Months turned into years, and my determination to establish a bond with my father never happened. I attended college, earned a degree, and even started a small business but unfortunately, my father's parents were never there to see my success. As a couple of years passed, I finally received a response from my so-called Father, Micheal. He expressed his love and longing to see his me. 'Son, I am so proud of you,' he said. I had changed during his time in prison, and I am determined to set a better example for his you. The authorities had decided to grant him parole, and he was released. We finally met at the gates of the prison, both of our eyes filled with tears. It was a moment that we both had dreamed of. This was only the beginning of our journey. We have a lot of catching up to do, I don't know how long we both have on this earth, said Micheal. To be continued.
                        """)
                        .bold()
                        .padding()
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
        .overlay(
            NavigationLink(destination: ThankYouView()) {
                Text("Thank you for reading Nostalgic Trauma")
                    .foregroundColor(.blue)
                    .padding()
            }
        )
    }
}

struct ThankYouView: View {
    var body: some View {
        Text("Thank you for reading Nostalgic Trauma")
            .font(.title)
            .foregroundColor(.white)
    }
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}
