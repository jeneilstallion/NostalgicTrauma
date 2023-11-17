import SwiftUI
import AVKit

struct Chapter1View: View {
    @State private var currentPage: Int = 1
    @State private var isPlaying: Bool = false
    @State private var player: AVPlayer?

    var body: some View {
        NavigationView {
            VStack {
                Text("Nostalgic Trauma")
                    .foregroundStyle(.yellow)
                    .bold()
                    .font(.largeTitle)
                Spacer()

                ImageView(imageNames: ["woodedrun", "chapter2Image", "chapter3Image", "chapter4Image", "chapter5Image"][currentPage - 1])
                    .frame(height: 250)
                    .padding()

                Text(getStoryText())
                    .frame(minHeight: 150) // Adjusted minHeight
                    .foregroundColor(.white)
                    .padding()
                    .onAppear {
                        playAudio()
                    }.background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black.opacity(0.5)) // Transparent background
                    )
                    .multilineTextAlignment(.center)
                    .frame(width: 350)
                Spacer()

                HStack(spacing: 20) {
                    CustomButton(action: {
                        if currentPage > 1 {
                            stopAudio()
                            currentPage -= 1
                            playAudio()
                        }
                    }, label: "Previous")

                    CustomButton(action: {
                        toggleAudio()
                    }, label: isPlaying ? "Pause" : "Play")

                    CustomButton(action: {
                        if currentPage < 5 {
                            stopAudio()
                            currentPage += 1
                            playAudio()
                        }
                    }, label: "Next")
                }
                .padding()
            }
            .background(Image("black2"))
//            .scaledToFill()
           // .navigationBarTitle("Nostalgic Trauma", displayMode: .inline)
            
            
          
           
            .navigationBarItems(trailing:
                Text("Page \(currentPage)")
                    .foregroundColor(.yellow)
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

    func getStoryText() -> String {
        // each chapter's text
        switch currentPage {
        case 1:
            return "Frank enjoyed a rare moment of tranquility jogging in the woods, surrounded by the soothing sounds of nature. The sun shined bright as he jogged along the path, deep in his thoughts. Suddenly, his foot tripped on something hidden in the leaves, sending him falling forward. Startled, he quickly regained his balance and turned to inspect the object. To his surprise, he discovered the body of what appears to be a woman lying motionless on the ground. "
        case 2:
            return "Frank leaned down beside her, his detective instincts kicking in. He rolled her over to check for vital signs, but OMG Her face is missing. She was a Murdered Jane Doe, a mystery waiting to be unraveled.Determined to uncover her identity and bring justice to her story, Frank carefully examined the area for any clues. He noticed a worn pendant around her neck, engraved with the initials Q.C.. Could this be a lead to her identity? "
        case 3:
            return "As the other detectives arrive, Frank made a solemn promise to himself. He would solve the mystery of Jane Doe and bring closure to her story, no matter how deep he had to delve into the shadows of the location."
        case 4:
            return "Chapter Ending"
        default:
            return ""
        }
            
    }

    func playAudio() {
        guard let path = Bundle.main.path(forResource: "chapter\(currentPage)Audio", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)

        player = AVPlayer(url: url)
        player?.play()

        isPlaying = true
    }

    func stopAudio() {
        player?.pause()
        isPlaying = false
    }

    func toggleAudio() {
        if isPlaying {
            player?.pause()
        } else {
            player?.play()
        }
        isPlaying.toggle()
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

struct ImageView: View {
    var imageNames: String

    var body: some View {
        Image(imageNames)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 1))
    }
}

extension UINavigationController {
    func setNavigationBarColor(_ color: UIColor) {
        navigationBar.barTintColor = color
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}

struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
