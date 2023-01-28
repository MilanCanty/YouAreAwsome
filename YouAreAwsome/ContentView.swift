//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Milan Canty on 1/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = " " //comment
    @State private var imageName = ""
    let message1 = "You Are Awesome!"
    let message2 = "You Are Great!"
    
    
    var body: some View {
        
        VStack {
        Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius:30)
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
            
            Spacer()
            
            Button("Show message") {
                imageName = (imageName == "image0" ? "image1" : "image0" )
                // this is the action performed when the button is pressed
//                if messageString == message1 {
//                    messageString = message2
//                } else {
//                    messageString = message1
//                }
   }
               
            .buttonStyle(.borderedProminent)
        
            
        }
        .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
