//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Milan Canty on 1/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the genious bar needs help they  call you " //comment
    
    var body: some View {

        
        ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.white,.blue,.red])
                )
                .ignoresSafeArea()
            VStack{
                Text("You have skills")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("Gold-BC"))
                    .padding()
                    .background(Color("Maroon-BC"))
                    .cornerRadius(15)
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(maxWidth:.infinity)
                    //.border(.orange, width: 1)
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
                //.border(.purple, width: 5)
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
