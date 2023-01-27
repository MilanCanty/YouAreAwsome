//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Milan Canty on 1/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste" //comment
    
    var body: some View {
        
        VStack{
         
            Spacer()
            
            Image(systemName: "speaker.wave.2",variableValue:0.30)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.553, saturation: 0.275, brightness: 1.0))
                .cornerRadius(30)
                .shadow(color:.gray,radius: 30, x:20, y:20)
                .overlay(RoundedRectangle(cornerRadius:30)
                    .stroke(.teal,lineWidth: 1))
                .padding()
                
                
            
        
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
            
            
            HStack {
                Button("Awsome") {
                    //this is the action preformed when the button is pressed
                    messageString = "You Are Awsome!"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
