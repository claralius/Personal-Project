import UIKit
import SwiftUI
import AVFoundation

func playSound(){
    playSound(sound: "backgroundMusic", type: "mp3")
}

struct ContentView: View {
    @State var activePage: Page = .welcome
    var body: some View {
        if activePage == .welcome {
            WelcomeView(activePage: $activePage)
        }
        else {
            Intro(activePage: $activePage)
        }
        
    }
}

enum Page {
    case welcome
    case intro
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
