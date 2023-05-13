import UIKit
import SwiftUI

struct WelcomeView: View {
    @Binding var activePage: Page
    @State private var showCreditSheet = false
    
    var body: some View {
        ZStack {
            Color.clear
                .background {
                    Image("backgroundImage")
                        .resizable()
                        .scaledToFill()
                }
                .ignoresSafeArea()

            VStack {
                Text("Let's explore the islands of Indonesia!")
                    .font(.system(size: 48))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("blue"))
                    .padding(.top, 240)
                
                Image("character")
                    .resizable()
                    .frame(width: 210, height: 429, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                Button{
                    activePage = .intro
                    playSound(sound: "backgroundMusic", type: "mp3")
                } label: {
                    Text("Start")
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                        .padding(.horizontal, 150)
                        .padding(.vertical,5)
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                        .background(.orange)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    showCreditSheet.toggle()
                }) {
                    Image("info")
                    Text("Credits")
                        .font(.system(size: 28))
                        .fontWeight(.medium)
                        .foregroundColor(Color("blue"))
                }
                .sheet(isPresented: $showCreditSheet, onDismiss: didDismiss){
                    VStack{
                        Spacer()
                        Text("")
                        VStack{
                            Text("Introduction Background Picture")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .fontWeight(.semibold)
                            
                            Link("Background Picture", destination: URL(string: "https://www.freepik.com/free-vector/tropical-island-nature-poster_2872130.htm")!)
                        }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                        
                        VStack{
                            Text("Information on Indonesia")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .fontWeight(.semibold)
                            
                            Link("Indonesia is the largest archipelagic country", destination: URL(string: "https://www.indonesia.travel/yachts/en/about-indonesia")!).padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                        VStack{
                            Text("Background Music")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .fontWeight(.semibold)
                            
                            Link("Background Music", destination: URL(string: "https://www.youtube.com/watch?v=S24ozLSZ94o")!)
                        }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                        VStack{
                            Text("Credits Information Button Icon")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .fontWeight(.semibold)
                            
                            Link("Icon", destination: URL(string: "https://www.iconsdb.com/orange-icons/info-icon.html")!)
                        }
                        
                        VStack{
                            Text("Flat Cloud Icon")
                                .foregroundColor(.black)
                                .font(.system(size:20))
                                .fontWeight(.semibold)
                            
                            Link("Icon", destination: URL(string:"https://www.freepik.com/free-vector/flat-clouds-collection_15628138.htm#query=cloud%20png&position=21&from_view=keyword&track=ais")!)
                            
                            Text("Some more credits on the information of Indonesia are in the README.md I have zipped along with the .swiftpm file").foregroundColor(.black)
                                .font(.system(size:20))
                                .padding(EdgeInsets(top: 15, leading: 10, bottom: 10, trailing: 10))
                                .multilineTextAlignment(.center)
                                .frame(width: 500, height: 100)
                                .fontWeight(.semibold)
                        }
                        
                       
                        Spacer()
                    }
                }
            }
        }
    }
    
    func didDismiss(){
        
    }

}

struct WelcomeView_Preview: PreviewProvider {
    static var previews: some View {
        WelcomeView(activePage: .constant(.intro))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



