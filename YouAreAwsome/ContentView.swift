//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Milan Canty on 1/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the genious bar needs help they  call you "
    
    var body: some View {

        
        VStack{
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(maxWidth:.infinity)
                .border(.orange, width: 1)
                .padding()
                
            
            HStack {
                Button("Awsome") {
                    //this is the action preformed when the button is pressed
                    messageString = "You Are Awsome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
