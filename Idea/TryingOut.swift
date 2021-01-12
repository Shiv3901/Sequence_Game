//
//  TryingOut.swift
//  Idea
//
//  Created by Shivam Savani on 1/1/21.
//

import SwiftUI

struct SecondView: View {

    @Environment(\.presentationMode) var presentationMode

    @State var integ = 2
    
    @State var showSecondButton = false
    
    var body: some View {
        
        Congratulations()
        
    }
}

struct TryingOut: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Hard") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            ContentView()
        }
    }
}

struct TryingOut_Previews: PreviewProvider {
    static var previews: some View {
        TryingOut()
    }
}
