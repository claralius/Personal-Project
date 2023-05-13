//
//  DreamIslandsDetails.swift
//  My App
//
//  Created by Clarabella Lius on 19/04/23.
//

import SwiftUI

struct DreamIslandsDetails: View {
    var text1: String
    var text2: String
    var text3: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack{
            Text(text1)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 5, trailing: 20))
                .multilineTextAlignment(.center)
            
            Text(text2)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 20))
                .foregroundColor(Color("blue"))
                .multilineTextAlignment(.center)
            
            Text(text3)
            .foregroundColor(Color("blue"))
            .padding(EdgeInsets(top:0, leading: 20, bottom: 5, trailing: 20))
            .multilineTextAlignment(.center)
            
            
        }
        .padding()
        .frame(width: width, height: height, alignment: .center)
    }
}

struct DreamIslandsDetails_Previews: PreviewProvider {
    static var previews: some View {
        DreamIslandsDetails(text1: "text1", text2: "text2", text3: "text3", width: 600, height: 800)
    }
}
