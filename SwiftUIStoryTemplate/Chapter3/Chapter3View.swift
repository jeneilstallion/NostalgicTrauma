import SwiftUI

struct Chapter3View: View {
    struct MyView: View {
        var body: some View {
            NavigationStack {
                NavigationLink("Press here for next page") {
                    Text("Here!")
                }
            }
        }
    }
    var body: some View {
        NavigationStack {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                    NavigationLink("the boy who cried, ME? ") {
                            Chapter3page1()
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    Chapter3View()
}
