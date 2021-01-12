//
//  Congratulations.swift
//  Idea
//
//  Created by Shivam Savani on 1/1/21.
//

import SwiftUI

// Congratulation view for future use of the app
struct Congratulations: View {
    
    // initialising the presentation mode
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        // displaying a button with a message
        Button("Congratulations for winning the round") {
            // trigger to get out of the view when the
            // button is pressed
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
