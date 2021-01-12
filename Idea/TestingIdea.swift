//
//  TestingIdea.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

// view to have images in the app, and link them to their sources
struct TestingIdea: View {
    
    // array that stores the names of the places or colours
    var countries = ["Cafe", "Colour", "Flower", "Paints", "Sad", "Wall"]
    
    // random number generator
    var correctAnswer = Int.random(in: 0...2)
    
    // body view for that the user can see
    var body: some View {
        
        ZStack {
            
            // blue background colour
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            // vertical stack
            VStack(spacing: -30) {
                
                // vertical stack
                VStack {
                    // text being displayed to the user
                    Text("Select the picture: ")
                        .foregroundColor(.white)
                    // a correct answer is selected every time it is called
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                // for loop printing the array and their images
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        //flag was tapped
                    }) {
                        // extracting the images from the sources
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
