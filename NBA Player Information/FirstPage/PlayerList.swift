//
//  PlayerList.swift
//  NBA Player Information
//
//  Created by Abhilash k George on 23/11/22.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetails(player: currentPlayer)){
                    PlayerNames(player: currentPlayer)
                    .frame(height:60)
                }
                    
            }
            .navigationTitle(Text("NBA Finals Players"))
           
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerList()
        }
    }
}
