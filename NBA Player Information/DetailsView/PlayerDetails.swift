//
//  PlayerDetails.swift
//  NBA Player Information
//
//  Created by Abhilash k George on 23/11/22.
//

import SwiftUI

struct PlayerDetails: View {
    let player: Player
    var body: some View {
        VStack {
            //background
            Image(player.team.imageName)
                .resizable()
                .frame(height: 250)
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(player.team.color)
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
                .offset(x: 0.0, y: -90)
                .padding(.bottom, -90)
                .shadow(radius: 15)
            Text(player.name)
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .padding(.bottom, 50)
                
                
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: "\(player.height)")
            StatText(statName: "Weight", statValue: "\(player.weight)")
            
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
        .edgesIgnoringSafeArea(.top)
        .padding(.bottom, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetails(player: players[0])
            PlayerDetails(player: players[2]).previewDevice("iPhone SE (2nd generation)")
        }
    }
}
