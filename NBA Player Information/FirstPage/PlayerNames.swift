//
//  PlayerName.swift
//  NBA Player Information
//
//  Created by Abhilash k George on 23/11/22.
//

import SwiftUI


struct PlayerNames: View {
    var player: Player
    var body: some View {
        
        HStack {
            SinglePlayer(playerImage: player.imageName, playerName: player.name, teamColor: player.team.color)
        }
    }
}

struct PlayerName_Previews: PreviewProvider {
    static var previews: some View {
        PlayerNames(player: players[0]).previewLayout(.fixed(width: 500, height: 200))
        
    }
}
