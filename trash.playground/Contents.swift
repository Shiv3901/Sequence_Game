//
//  ContentView.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

func create(counter: Float, cond: Bool) -> CGFloat {
    
    var count = counter
    
    func decrease() {
        count -= 0.25
    }
    
    func increase() {
        count += 0.25
    }
    
    if cond == true {
        increase()
    } else {
        decrease()
    }
    
    return CGFloat(count)
}

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    @State var cond = true
    
    @State private var animationAmount1: CGFloat = 1
    @State var cond1 = true
    
    @State private var animationAmount2: CGFloat = 1
    @State var cond2 = true

    @State private var animationAmount3: CGFloat = 1
    @State var cond3 = true
    
    var body: some View {
        
        VStack {
            
            Button(String(Float(animationAmount2))) {
                if animationAmount2 == 3 {
                    cond2 = false
                } else if animationAmount2 == 0.50 {
                    cond2 = true
                }
                
                animationAmount2 = create(counter: Float(animationAmount2), cond: cond2)
                    
                print(animationAmount2)
            }
            .padding(50)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount2)
            .animation(
                Animation.easeInOut(duration: 0.5)
            )
            
            HStack {
                
                Button(String(Float(animationAmount))) {
                    if animationAmount == 3 {
                        cond = false
                    } else if animationAmount == 0.50 {
                        cond = true
                    }
                    
                    animationAmount = create(counter: Float(animationAmount), cond: cond)
                        
                    print(animationAmount)
                }
                .padding(50)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount)
                .animation(
                    Animation.easeInOut(duration: 0.5)
                )
                
                
                
                Button(String(Float(animationAmount1))) {
                    if animationAmount1 == 3 {
                        cond1 = false
                    } else if animationAmount1 == 0.50 {
                        cond1 = true
                    }
                    
                    animationAmount1 = create(counter: Float(animationAmount1), cond: cond1)
                        
                    print(animationAmount1)
                }
                .padding(50)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount1)
                .animation(
                    Animation.easeInOut(duration: 0.5)
                )
                
                
                .lineSpacing(30)
            }
            
            Button(String(Float(animationAmount3))) {
                if animationAmount3 == 3 {
                    cond3 = false
                } else if animationAmount3 == 0.50 {
                    cond3 = true
                }
                
                animationAmount3 = create(counter: Float(animationAmount3), cond: cond3)
                    
                print(animationAmount3)
            }
            .padding(50)
            .background(Color.yellow)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount3)
            .animation(
                Animation.easeInOut(duration: 0.5)
            )
            
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
