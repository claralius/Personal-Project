//
//  DreamIslands.swift
//  My App
//
//  Created by Clarabella Lius on 15/04/23.
//

import SwiftUI

struct IslandData: Identifiable {
    var id: String {
        return islandName
    }
    let islandIndex: Int
    let imageName: String
    let islandName: String
    let islandDescription1: String
    let islandDescription2: String
    let islandDescription3: String
    let islandPosition: CGPoint
    let islandWidth: CGFloat
    let islandHeight: CGFloat
    
    let textBoxPostion: CGPoint
    let textBoxWidth : CGFloat
    let textBoxHeight : CGFloat
    
    let boatLandingPosition: CGPoint
    let islandEnumName: Island
}

struct DreamIslands: View {
    
    @State var activeIsland: Island? = nil
    @State private var sailHistory: [Island] = []
    
    @State private var boatPosition: CGPoint = .init(x: 110, y: 1290)
    @State var selectedIslandIndex: Int?
    
    let islandData: [IslandData] = [
        IslandData(
            islandIndex: 0,
            imageName: "Bali",
            islandName: "Bali",
            islandDescription1: "Bali Island",
            islandDescription2: """
                            Bali, also known as the Land of the Gods, is one of the most sought after travel destinations in the world. Bali is also a surfer’s paradise as the swells are big 🏄‍♂️
                            """,
            islandDescription3: """
Famous Foods: From Babi Guling, Satay Babi, to Ayam Betutu, Bali has a very rich culinary culture. There are lots of great food to explore in Bali, but one that I cannot miss when visiting Bali is the roast pork from Warung Babi Guling Pande Egi. You should try it out when visiting Bali!

Famous Places: If you love climbing mountains, Gunung Agung and Mount Batur are the places to go. It offers spectacular views of the island and you can also enjoy the sunrise. Nungnung Waterfall is also the perfect place for you to feel closer to nature and refresh yourself.
""",
            islandPosition: .init(x: -165, y: 1000),
            islandWidth: 540,
            islandHeight: 650,
            
            textBoxPostion: .init(x:430, y:800),
            textBoxWidth: 480,
            textBoxHeight: 490,
            
            boatLandingPosition: .init(x: 100, y: 850),
            islandEnumName: .bali
        ),
        
        IslandData(
            islandIndex: 1,
            imageName: "NusaPenida",
            islandName: "Nusa Penida 🏝️",
            islandDescription1: "Nusa Penida Island",
            islandDescription2: "Nusa Penida, one of the three Nusa islands off mainland Bali, boasts unique and breathtaking landscapes. To reach this island, one must take a ferry or speedboat from Sanur.",
            islandDescription3: """
Kelingking Beach is among the most popular beaches in Nusa Penida, renowned for its stunning views from the Kelingking Cliff. However, the hike to the beach takes approximately two hours roundtrip.
            
Goa Giri Putri Temple, a Hindu temple situated within a large limestone cave on Penida's east side, is a destination that I am eager to visit. The cave's spring water is believed by Hindus to possess healing powers.
""",
            islandPosition: .init(x:90, y:1050),
            islandWidth: 125,
            islandHeight: 105,
            
            textBoxPostion: .init(x:500, y:1000),
            textBoxWidth: 450,
            textBoxHeight: 445,
            
            boatLandingPosition: .init(x: 100, y: 1140),
            islandEnumName: .nusaPenida
        ),
        
        IslandData(
            islandIndex: 2,
            imageName: "Lombok",
            islandName: "Lombok",
            islandDescription1: "Lombok Island 🐠🐟",
            islandDescription2: """
Lombok, nestled in the western region of Nusa Tenggara, is a pristine island paradise that boasts of spectacular beaches and a rich marine ecosystem that is sure to leave you in awe.
""",
            islandDescription3: """
The island is also home to the majestic Mount Rinjani, a towering volcano that is one of Indonesia's highest peaks. Crowned with the Segara Anak Crater Lake, Mount Rinjani offers a picturesque and mystical view of the island's stunning landscape.

Moreover, the views from Plawangan Sembalun and Senaru are often compared to the quaint charm of Switzerland's countryside, adding a touch of European allure to Lombok's tropical allure.
""",
            islandPosition: .init(x:510, y:800),
            islandWidth: 380,
            islandHeight: 320,
            
            textBoxPostion: .init(x:990, y:700),
            textBoxWidth: 450,
            textBoxHeight: 450,
            
            boatLandingPosition: .init(x: 540, y: 950),
            islandEnumName: .lombok
        ),

        IslandData(
            islandIndex: 3,
            imageName: "Sumba",
            islandName: "Sumba",
            islandDescription1: "Sumba Island 🐴🌇",
            islandDescription2: """
Sumba, an island in Indonesia, is often referred to as the "Forgotten Island." Despite this, it is a hidden gem that is gaining popularity among surfers and adventurers.
""",
            islandDescription3: """
For those who love nature, the Laiwangi Wanggameti National Park is a must-visit destination. Here, visitors can witness a wide array of plant species, trees, and exotic animals. In Sumba, you can also see a lot of wild horses and even ride a horse on the beach at sunset.

When you visit Sumba, don't miss the chance to explore Kampung Tarung, where you can observe the locals' way of life and learn about their traditional customs. Additionally, I would highly recommend trying Manggulu, a traditional cake made from bananas, brown sugar, and peanuts. It's a delicious and unique delicacy that you won't want to miss!
""",
            islandPosition: .init(x:850, y:1290),
            islandWidth: 505,
            islandHeight: 270, 
            
            textBoxPostion: .init(x:350, y:1100),
            textBoxWidth: 460,
            textBoxHeight: 520,
            
            boatLandingPosition: .init(x: 600, y: 1290),
            islandEnumName: .sumba
        ),

        IslandData(
            islandIndex: 4,
            imageName: "Komodo",
            islandName: "Komodo",
            islandDescription1: "Komodo Island 🦎",
            islandDescription2: "Located in the Indonesian archipelago, Komodo Island is a small island that is part of the Komodo National Park. The park comprises a total of 29 volcanic islands and is the natural habitat of around 2,500 komodo dragons.",
            islandDescription3: """
One of the attractions I would love to explore on Komodo Island is the renowned Pink Beach. This unique destination is one of only seven places in the world with a distinctive soft pink hue, making it a must-see destination.
            
In addition to the Pink Beach, hiking to the summit of Padar Island is a must-do activity while visiting Komodo Island. The hike to the top is relatively easy, taking about 45 minutes to an hour. The panoramic view from the summit is breathtaking and sure to leave an everlasting impression.
""",
            islandPosition: .init(x:855, y:850),
            islandWidth: 150,
            islandHeight: 250,
            
            textBoxPostion: .init(x:480, y:1000),
            textBoxWidth: 500,
            textBoxHeight: 485,
            
            boatLandingPosition: .init(x: 800, y: 950),
            islandEnumName: .komodo
        ),

        IslandData(
            islandIndex: 5,
            imageName: "Flores",
            islandName: "Flores",
            islandDescription1: "Flores Island 🌺",
            islandDescription2: """
Flores is named after the Portuguese word for "flowers," but despite not being widely recognized for its flora, its stunning beauty will still leave you in awe. In addition, the people of Flores are renowned for their hospitality towards visitors, creating a welcoming and friendly atmosphere that adds to the island's charm.
""",
            islandDescription3: """
One of the things on my bucket list is visiting the Kelimutu lakes, which are known for their unpredictability in terms of when and what color they will change into. At times, the lakes can appear blue, green, and black, while at other times they may change to white, red, and blue.

Jawada is a traditional sweet snack that Flores is famous for, and it is shaped like a triangle. Made with rice flour, palm sugar, coconut milk, and salt, this sweet treat is a delicacy that visitors should not miss.
""",
            islandPosition: .init(x:1380, y:820),
            islandWidth: 800,
            islandHeight: 340,
            
            textBoxPostion: .init(x:700, y:900),
            textBoxWidth: 400,
            textBoxHeight: 570,
            
            boatLandingPosition: .init(x:1200, y:950),
            islandEnumName: .flores
        )
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("ocean")
                    .resizable()
                    .scaledToFill()
                
                Image("boat")
                    .resizable()
                    .frame(width: 124, height: 206)
                    .rotationEffect(.degrees(75))
                    .zIndex(1)
                    .position(boatPosition)
                
                ForEach(islandData){ island in
                    Image(island.imageName)
                        .resizable()
                        .opacity(selectedIslandIndex == island.islandIndex ? 1 : 0.6)
                        .frame(width: island.islandWidth, height:island.islandHeight)
                        .position(island.islandPosition)
                        .onTapGesture {
                            selectedIslandIndex = island.islandIndex
                            sailHistory.append(island.islandEnumName)
                            withAnimation(Animation.linear(duration: 1.5)) {
                                boatPosition = island.boatLandingPosition
                            }
                        }
                }
                
                Image("cloud1")
                    .resizable()
                    .frame(width: 500, height: 300)
                    .offset(x:500, y:-400)
                    .opacity(0.7)
                
                Image("cloud2")
                    .resizable()
                    .frame(width: 400, height: 230)
                    .offset(x:-120, y:-300)
                    .opacity(0.7)
                
                Image("cloud3")
                    .resizable()
                    .frame(width: 300, height: 100)
                    .offset(x:-580, y:-170)
                    .opacity(0.7)
                
                Image("cloud3")
                    .resizable()
                    .frame(width: 350, height: 150)
                    .offset(x:500, y:150)
                    .opacity(0.7)
                
                //Show dream island and card below it
                InformationCardView()
                
                //Text information
                if let selectedIslandIndex{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: islandData[selectedIslandIndex].textBoxWidth, height: islandData[selectedIslandIndex].textBoxHeight)
                        .cornerRadius(10)
                        .overlay(
                            Group{
                                DreamIslandsDetails(
                                    text1: (islandData[selectedIslandIndex].islandDescription1),
                                    text2: (islandData[selectedIslandIndex].islandDescription2),
                                    text3: (islandData[selectedIslandIndex].islandDescription3),
                                    width: (islandData[selectedIslandIndex].textBoxWidth),
                                    height: (islandData[selectedIslandIndex].textBoxHeight)
                                )
                            }
                            
                        )
                        .position(x:islandData[selectedIslandIndex].textBoxPostion.x, y: islandData[selectedIslandIndex].textBoxPostion.y)
                }
                
                if sailHistory.contains(.bali),
                   sailHistory.contains(.nusaPenida),
                   sailHistory.contains(.lombok),
                   sailHistory.contains(.komodo),
                   sailHistory.contains(.flores),
                   sailHistory.contains(.sumba)
                {
                    
                    NavigationLink(destination: EndPageView(), label: {
                        Text("Finish")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .padding(.horizontal, 100)
                            .padding(.vertical,5)
                            
                    })
                    .frame(alignment: .center)
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(8)
                    .position(x:980, y: 1290)
                    .navigationBarBackButtonHidden(true)
                }
                
            }
        }.navigationBarBackButtonHidden(true)
            .navigationViewStyle(.stack)
    }
}

struct InformationCardView: View{
    
    var body: some View{
        HStack {
            VStack{
                Image("title")
                
                HStack{
                    Text("""
These are some more islands you can explore in Indonesia.
It's a dream of mine to be able to visit these beautiful islands, hence the name "dream islands" ☁️💫
                    
Let's explore all the islands by tapping on them!
""")
                    .font(.system(size: 17))
                    .foregroundColor(Color("blue"))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .fontWeight(.semibold)
                }
                .padding([.bottom, .top, .leading, .trailing], 10)
                .frame(maxWidth: 350)
                .background(Color("cream"))
                .border(Color.brown, width: 8)
                .shadow(radius: 30)
                .cornerRadius(8)
                .padding()
            }
            .offset(CGSize(width: 35, height: -330))
            
            Spacer()
        }
    }
    
}

struct DreamIslands_Previews: PreviewProvider {
    static var previews: some View {
        DreamIslands()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



