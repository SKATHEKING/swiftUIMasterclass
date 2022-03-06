//
//  ContentView.swift
//  swiftUIMasterclass
//
//  Created by Mateus Goncalves De Ouro on 01/03/2022.
//

import SwiftUI

struct ContentView: View {
@State private var playerCard = "card5"
@State  private var cpuCard = "card9"
@State  private var playerSCore = 0
@State private var cpuScore = 0
 
    var body: some View {
        
        
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
            Spacer()
        Image("logo")
            Spacer()
          
            HStack{
        Image(playerCard)
        Image(cpuCard)
                }
            
            Spacer()
                Button(action:{
                    //generate random number
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerSCore += 1}
                    else if playerRand == cpuRand{
                        playerSCore = playerSCore
                        cpuScore = cpuScore
                    }
                    else{
                        cpuScore += 1}
                    
                    },
                       label: {Image("dealbutton")})
            
            Spacer()
            HStack{
                Spacer()
                
            Text("Player")
            .font(.headline)
            .foregroundColor(Color.white)
            .padding()
                
                Spacer()
                
                Text("CPU")
                    .font(.headline)
                    .foregroundColor(Color.white)
                .padding()
                
                Spacer()
            }
            HStack{
                Spacer()
                Text(String(playerSCore))
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
                    Text(String(cpuScore))
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
            }
            
            Spacer()
                
            } }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
}
