//
//  MainMap.swift
//  My App
//
//  Created by Clarabella Lius on 14/04/23.
//

import SwiftUI
import UIKit

struct MainIslands: View {
    
    @State private var activeIsland: Island? = nil
    @State private var sailHistory: [Island] = []
    
    @State private var javaPosition: CGPoint = .init(x: 230, y: 960)
    @State private var baliPosition: CGPoint = .init(x: 1250, y: 1000)
    @State private var belitungPosition: CGPoint = .init(x: 300, y: 530)
    @State private var boatPosition: CGPoint = .init(x: 110, y: 1290)
    
    @State private var javaOpacity  = 0.6
    @State private var baliOpacity  = 0.6
    @State private var belitungOpacity  = 0.6
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("ocean")
                    .resizable()
                    .scaledToFill()
                
                Image("boat")
                    .resizable()
                    .frame(width: 124, height: 206)
                    .rotationEffect(.degrees(75))
                    .zIndex(1)
                    .position(boatPosition)
                
                //Java island
                Image("Java")
                    .resizable()
                    .frame(width: 1500, height:1800)
                    .position(x:270, y:1000)
                    .opacity(javaOpacity)
                    .onTapGesture {
                        activeIsland = .java
                        javaOpacity = 1
                        baliOpacity = 0.6
                        belitungOpacity = 0.6
                        sailHistory.append(.java)
                        withAnimation(Animation.linear(duration: 1.5)) {
                            boatPosition = javaPosition
                        }
                    }
                
                //Bali island
                Image("Bali")
                    .resizable()
                    .frame(width: 540, height:650)
                    .position(x:1250, y:1000)
                    .opacity(baliOpacity)
                    .onTapGesture {
                        activeIsland = .bali
                        baliOpacity = 1
                        javaOpacity = 0.6
                        belitungOpacity = 0.6
                        sailHistory.append(.bali)
                        withAnimation(Animation.linear(duration: 1.5)) {
                            boatPosition = baliPosition
                        }
                    }
                
                //Belitung island
                Image("Belitung")
                    .resizable()
                    .frame(width: 520, height:650)
                    .position(x:370, y:470)
                    .opacity(belitungOpacity)
                    .onTapGesture {
                        activeIsland = .belitung
                        belitungOpacity = 1
                        javaOpacity = 0.6
                        baliOpacity = 0.6
                        sailHistory.append(.belitung)
                        withAnimation(Animation.linear(duration: 1.5)) {
                            boatPosition = belitungPosition
                        }
                    }
                
                //Discover more button
                if sailHistory.contains(.bali),
                   sailHistory.contains(.belitung),
                   sailHistory.contains(.java)
                {
                    NavigationLink(destination: DreamIslands(), label: {
                        Text("Discover more islands")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .padding(.horizontal, 100)
                            .padding(.vertical,5)
                    })
                    .frame(width: 600, height: 100)
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(8)
                    .position(x:980, y: 1290)
                }
                
                //Instructions
                HStack{
                    Text("""
                        You can visit the islands and get to know more about the island by tapping on it!
                         
                        Explore all the islands here and click the button to discover more islands once you're done.
                        """)
                    .font(.system(size: 25))
                    .foregroundColor(Color("blue"))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .fontWeight(.semibold)
                }
                .padding([.bottom, .top, .leading, .trailing], 20)
                .frame(maxWidth: 400)
                .background(Color("cream"))
                .border(Color.brown, width: 8)
                .shadow(radius: 30)
                .cornerRadius(8)
                .position(x: 990, y: 550)
                .padding()
                
                
                //Information
                if activeIsland == .java {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 400 , height: 570, alignment: .center)
                        .cornerRadius(25)
                        .shadow(color:.black, radius: 8)
                        .overlay(
                            VStack{
                                Text("Java island")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 20))
                                
                                Text("""
                                 Java is the fifth largest island in Indonesia and the world’s most populated island. Indonesia’s capital city, Jakarta, is on Java’s northwestern coast and where I grew up. There are four administrative provinces in Java - Banten, East Java, Central Java, and West Java.
                                 
                                """).padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 20))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("blue"))
                                
                                Text("""
**Famous Foods**: Rawon is a unique Indonesian dish from East Java  made with slow-braised beef and other traditional Indonesian ingredients. Another great dish is Nasi Liwet from Solo, which is rice cooked in coconut milk with chicken broth and various seasonings.

**Famous Places**: When visiting Jakarta, I recommend going to Glodok (Jakarta’s Chinatown). There are so many authentic traditional Chinese-Indonesian cuisines there and it is also close to Kota Tua - an area famous for Dutch colonial architecture. The Borobudur temple at Magelang is also not to be missed.
""").foregroundColor(Color("blue"))
    .multilineTextAlignment(.center)
    .padding(EdgeInsets(top:0, leading: 20, bottom: 5, trailing: 20))
                            }
                        ).position(x: 500, y: 850)
                }
                
                if activeIsland == .bali {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 400 , height: 520, alignment: .center)
                        .cornerRadius(25)
                        .shadow(color:.black, radius: 8)
                        .overlay(
                            VStack{
                                Text("Bali Island")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 20))
                                
                                Text("""
                            Bali, also known as the Land of the Gods, is one of the most sought after travel destinations in the world. Bali is also a surfer’s paradise as the swells are big 🏄‍♂️
                            """) .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 20))
                                    .foregroundColor(Color("blue"))
                                
                                Text("""
**Famous Foods**: From Babi Guling, Satay Babi, to Ayam Betutu, Bali has a very rich culinary culture. There are lots of great food to explore in Bali, but one that I cannot miss when visiting Bali is the roast pork from Warung Babi Guling Pande Egi. You should try it out when visiting Bali!

**Famous Places**: If you love climbing mountains, Gunung Agung and Mount Batur are the places to go. It offers spectacular views of the island and you can also enjoy the sunrise. Nungnung Waterfall is also the perfect place for you to feel closer to nature and refresh yourself.
""").foregroundColor(Color("blue"))
    .multilineTextAlignment(.center)
    .padding(EdgeInsets(top:0, leading: 20, bottom: 5, trailing: 20))
                            }
                        ).position(x: 970, y: 800)
                }
                
                if activeIsland == .belitung {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 500 , height: 400, alignment: .center)
                        .cornerRadius(25)
                        .shadow(color:.black, radius: 8)
                        .overlay(
                            VStack{
                                Text("Belitung Island")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 20))
                                
                                Text("""
Belitung is an island east of Sumatra. This is where my mother's side of the family came from 👨‍👩‍👧‍👦 It was also the location where one of Indonesia’s highest grossing film, ***Laskar Pelangi***, was shot.
""")
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 20))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("blue"))
                                
                                Text("""
**Famous Foods**: One of my favorite dishes is Lempah Kuning, a traditional fish stew made with yellow turmeric and spicy chili sauce. Mie Belitung is also a must try dish when visiting Belitung.

**Famous Places**: Tanjung Tinggi beach (Laskar Pelangi beach) is a beautiful pristine beach with perfect turquoise blue waters and giant granite stones. The lighthouse at Lengkuas island is also worth paying a visit! It was built by the Dutch in 1882 and is the perfect spot to take pictures.
""")
                                .foregroundColor(Color("blue"))
                                .multilineTextAlignment(.center)
                                .padding(EdgeInsets(top:0, leading: 20, bottom: 10, trailing: 20))
                                
                            }
                        ).position(x: 600, y: 700)
                }
            }
        }.navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        
    }
    
}

struct MainIslands_Previews: PreviewProvider {
    static var previews: some View {
        MainIslands()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

enum Island {
    case java
    case belitung
    case bali
    case nusaPenida
    case lombok
    case komodo
    case sumba
    case flores
}



