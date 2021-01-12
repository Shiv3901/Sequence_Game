//
//  Congratulations.swift
//  Idea
//
//  Created by Shivam Savani on 1/1/21.
//

import SwiftUI

struct Congratulations: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        Button("Congratulations for winning the round") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
