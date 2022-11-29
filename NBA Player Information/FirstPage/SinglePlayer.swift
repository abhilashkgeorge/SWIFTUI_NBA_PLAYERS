//
//  SinglePlayer.swift
//  NBA Player Information
//
//  Created by Abhilash k George on 23/11/22.
//

import SwiftUI

struct SinglePlayer: View {
    
    var playerImage: String
    var playerName: String
    var teamColor: Color
    
    var body: some View {
        HStack{
            Image(playerImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(teamColor))
            Text(playerName)
                .font(.system(.largeTitle))
            Spacer()
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
    }
}

struct SinglePlayer_Previews: PreviewProvider {
    static var previews: some View {
        SinglePlayer(playerImage: "steph", playerName: "Steph", teamColor: .red)
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
