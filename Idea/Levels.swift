//
//  Levels.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

// Levels view where the buttons for different variables are defined

struct Levels: View {
    
    // initialising variables to keep track of buttons being clicked
    
    @State private var showEasy: Bool = false
    @State private var showMedium: Bool = false
    @State private var showHard: Bool = false
    
    // the view which user can see, if selected
    var body: some View {
        
        // creating a vertical stack of buttons to keep the alignment
        
        VStack(spacing: 50){
            
            // a wave structure to modify the look of the game
//            Wave()
//                .edgesIgnoringSafeArea(.all)
//                .foregroundColor(Color.red)
            
            // defining the easy button and customizing it to needs
            Button("Easy") {
                // trigger to start the easy level, if the button is pressed
                self.showEasy.toggle()
            }
            // all the custom modifications for the button
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.blue)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
            // is presented depends upon the varaiable showEasy
            .sheet(isPresented: $showEasy) {
                Easy()
            }
            
            //defining the average button
            Button("Average") {
                self.showMedium.toggle()  //trigger to start the level
            }
            // all the custom modifications for the button
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
            // medium level presented if the button is clicked by the user
            .sheet(isPresented: $showMedium) {
                Medium()
            }
            
            // defining the hard button
            Button("Hard") {
                self.showHard.toggle()    //trigger to start the level
            }
            // modifications for the button
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.green)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
            // hard level presented if the button is clicked by the user
            .sheet(isPresented: $showHard) {
                Hard()
            }
            
        }
        
    }
}

struct Levels_Previews: PreviewProvider {
    static var previews: some View {
        Levels()
    }
}
