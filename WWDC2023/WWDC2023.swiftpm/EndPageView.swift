//
//  EndPageView.swift
//  My App
//
//  Created by Clarabella Lius on 17/04/23.
//

import SwiftUI

struct EndPageView: View {
    var body: some View {
        NavigationView{
            ZStack{
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
                            Text("Congratulations! You’ve explored a lot of islands today. I hope you can visit these islands soon 🏝️")
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
                        
                        
                    }
                    
                    Image("character")
                        .resizable()
                        .frame(width: 379, height: 778, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(CGSize(width: 0, height: 300))
                }
            }
        }.navigationViewStyle(.stack)
            .navigationBarBackButtonHidden(true)
    }
}

struct EndPageView_Previews: PreviewProvider {
    static var previews: some View {
        EndPageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
