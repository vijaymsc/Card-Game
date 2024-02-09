//
//  GameView.swift
//  Card Game
//
//  Created by ulektz on 06/06/23.
//

import SwiftUI

struct GameView: View {
    @State var playerCard = "card3"
    @State var cpuCard = "card4"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Image("button")
                Button {
                play()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom,20)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Cpu").font(.headline)
                            .padding(.bottom,15)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
           
        }
    }
    
    func play(){
        var upadePlayerScore = Int.random(in: 2...14)
        playerCard = "card" + String(Int.random(in: 2...14))
        var upadeCpuScore = Int.random(in: 2...14)
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        if upadePlayerScore > upadeCpuScore{
            playerScore += 1
        }else if upadeCpuScore > upadePlayerScore{
            cpuScore += 1
        }
    }
    

    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
