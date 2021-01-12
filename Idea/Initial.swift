//
//  Initial.swift
//  Idea
//
//  Created by Shivam Savani on 30/12/20.
//

import SwiftUI

struct Initial: View {
    
    
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: ContentView()) {
                    
                VStack {
                    Text("Start")
                        
                        .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.yellow, lineWidth: 5)
                            )
            
//                    Button("Toggle Full Screen") {
//                            self.fullScreen.toggle()
//                    }
//                    .padding(30)
                }
                
            
            }
            
            
            .navigationBarTitle("Home")
//            .navigationBarHidden(fullScreen)
        }
//        .statusBar(hidden: fullScreen)
        
        
    }
}

struct Initial_Previews: PreviewProvider {
    static var previews: some View {
        Initial()
    }
}
