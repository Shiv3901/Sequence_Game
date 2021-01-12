//
//  IdeaApp.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

// main file of the app, or the parent
@main
struct IdeaApp: App {
    
    // Initialising Levels view to a variable for further use
    @State var Initiator: Levels = Levels()
    
    // creating a scene variable that a user can see
    var body: some Scene {
        
        // grouping the windows
        WindowGroup{
            Initiator          // calling the levels view
        }
        
    }
    
}
