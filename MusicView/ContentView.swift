import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 1
            Image("carson")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 32)
                .overlay(.regularMaterial)
            
            // 2
            Image("carson")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 36)
                .mask { // 3
                    VStack {
                        Image("")
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.15), radius: 3)
                        
                        Text("Carson Cameron Clark")
                            .font(.title.bold())
                        
                        Text("@NoSavage")
                            .font(.callout)
                    }
                }
                .overlay { // 4
                    VStack {
                        Image("")
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.15), radius: 3)
                        
                        Text("Carson Cameron Clark")
                            .font(.title.bold())
                            .opacity(.zero) // 5
                        
                        Text("@NoSavage")
                            .font(.callout)
                            .opacity(.zero)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
