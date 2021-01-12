//
//  TrialButton.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

struct TrialButton: View {
    
    
    
    @State var tapCounter: Int = 0
    
    func decrease() {
        self.tapCounter -= 1
    }
    
    func increase() {
        self.tapCounter += 1
    }
    
    @State var condition = true
        
        var body: some View {
            
            VStack(spacing: 20) {
                
                Button(action: {
                    
                    if self.tapCounter == 20 {
                        self.condition = false
                    } else if self.tapCounter == 0 {
                        self.condition = true
                    }
                    
                    if self.condition == true {
                        increase()
                    }else {
                        decrease()
                    }
                    
                }) {
                    Text("Hello World")
                        .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.yellow, lineWidth: 5)
                            )
                }
                
                Text("Button Pressed: \(tapCounter) times")
                
                    .padding()
                
            }
            
        }
}
