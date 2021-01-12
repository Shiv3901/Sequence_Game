//
//  TestingIdea.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

struct TestingIdea: View {
    
    var countries = ["Cafe", "Colour", "Flower", "Paints", "Sad", "Wall"]
    
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: -30) {
                VStack {
                    Text("Select the picture: ")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        //flag was tapped
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .frame(width: 200, height: 200
                                   , alignment: .center)
                    }
                }
                    
            }
        }
    }
    
    
}


struct TestingIdea_Previews: PreviewProvider {
    static var previews: some View {
        TestingIdea()
    }
}
