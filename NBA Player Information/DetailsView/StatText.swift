//
//  StatText.swift
//  NBA Player Information
//
//  Created by Abhilash k George on 23/11/22.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack{
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.leading, 30)
            
            Text(statValue)
                .font(.system(size: 40))
                .fontWeight(.light)
                .padding(.trailing, 40)
            
            Spacer()
        }
       
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Demo", statValue: "1245")
    }
}
