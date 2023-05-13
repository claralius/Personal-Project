import UIKit
import SwiftUI

struct Intro: View {
    @Binding var activePage: Page
    @State private var pageState: Int = 0
    @State private var currentText: Text = Text("Hi! My name is Clara and I'm from Indonesia.")
    @State private var isLastDialog: Bool = false
    
    let dialogs: [Text] = [
        Text("""
                               You might have heard that Indonesia is the largest archipelagic country.
                               """),
        
        Text("But did you know there are about 18,110 islands in Indonesia?! "),
        
        Text("""
            Today I’m going to share with you some of the most famous islands in Indonesia that I have visited and I wish to visit.
            """),
        
        Text("""
            There are also some recommendations I have made so you can try it out when you visit Indonesia :)
            """)
        
    ]
    
    var body: some View {
        if isLastDialog {
            MainIslands()
        } else {
            ZStack {
                Color.clear
                    .background {
                        Image("backgroundImage")
                            .resizable()
                            .ignoresSafeArea()
                            .scaledToFill()
                    }
                
                HStack(spacing: 80) {
                    VStack {
                        VStack{
                            dialogs[pageState]
                                .font(.system(size: 28))
                                .foregroundColor(Color("blue"))
                                .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
                                .fontWeight(.semibold)
                            
                        }
                        .padding([.bottom, .top, .leading, .trailing], 30)
                        .frame(maxWidth: 520)
                        .background(.white)
                        .border(Color.orange, width: 8)
                        .shadow(radius: 30)
                        .cornerRadius(8)
                        .padding()
                        
                        Button(action: {
                            if pageState == dialogs.count - 1{
                                isLastDialog = true
                            } else if pageState < dialogs.count - 1 {
                                pageState += 1
                                print("\(pageState) \(dialogs.count)")
                            }
                        }) {
                            Text("Next")
                                .font(.system(size: 40))
                                .fontWeight(.semibold)
                                .padding(.horizontal, 110)
                                .padding(.vertical,5)
                                .frame(alignment: .center)
                                .foregroundColor(.white)
                                .background(.orange)
                                .cornerRadius(8)
                        }
                    }
                    
                    Image("character")
                        .resizable()
                        .frame(width: 379, height: 778, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(CGSize(width: 0, height: 300))
                }
            }
        }
    }
}

enum PageState {
    case dialog1
    case dialog2
}

struct Intro_Preview: PreviewProvider {
    static var previews: some View {
        Intro(activePage: .constant(.intro))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
