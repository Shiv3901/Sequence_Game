//
//  Levels.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

struct Levels: View {
    
    @State private var showEasy: Bool = false
    @State private var showMedium: Bool = false
    @State private var showHard: Bool = false
    
    var body: some View {
        
        VStack(spacing: 50){
            
//            Wave()
//                .edgesIgnoringSafeArea(.all)
//                .foregroundColor(Color.red)
            
            Button("Easy") {
                self.showEasy.toggle()
            }
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.blue)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
            .sheet(isPresented: $showEasy) {
                Easy()
            }
            
            Button("Average") {
                self.showMedium.toggle()
            }
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
            .sheet(isPresented: $showMedium) {
                Medium()
            }
            
            Button("Hard") {
                self.showHard.toggle()
            }
            .padding(80)
            .frame(width: 250, height: 100)
            .background(Color.green)
            .cornerRadius(40)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.yellow, lineWidth: 5)
            )
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
