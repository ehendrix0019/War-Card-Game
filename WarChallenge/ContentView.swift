//
//  ContentView.swift
//  WarChallenge
//
//  Created by Eric Hendrix on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            //Background
            Image("background")
                .ignoresSafeArea()
            VStack{
                //Logo
                Spacer()
                Image("logo")
                //Card images
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Deal Button
                
                
                Button {
                    
                    //Generate a random seed between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    // Update the cards
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    //Update player score
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }else if(playerRand < cpuRand){
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }


                
                Spacer()
                HStack{
                    //Text
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
