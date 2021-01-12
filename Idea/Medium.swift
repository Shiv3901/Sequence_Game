//
//  Medium.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

func creater2() -> [Float] {

    var llist: [Float] = [0, 0, 0, 0, 0]

    for i in 0...4 {
        llist[i] = Float(Int.random(in: 4...7) * 3) / 12
    }
    
    return llist
    
}

struct Medium: View {
    
    @State var maximum: CGFloat = 1.75
    @State var minimum: CGFloat = 1
    
    @State var Cols = [Color.blue, Color.red, Color.green, Color.red, Color.blue]
    
    @State var animationDuration: Double = 0.50
    
    @State private var animationAmount: [CGFloat] = [1.25,1,1.25,1,1.25]
    @State var cond: [Bool] = [false, false, true, false, false]
    
    @State var llist: [Float] = creater2()
    
    @State var shouldHide: Bool = true
    
    @State var final: String = "Just there"
    
    @State private var showingSheet = false
    
    @State var targetColor = Color.white
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Sequence: \(Int(llist[0]*12)) | \(Int(llist[1]*12)) | \(Int(llist[2]*12)) | \(Int(llist[3]*12)) | \(Int(llist[4]*12))")
                .fontWeight(.bold)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
                .foregroundColor(Color.black)
            
            HStack(spacing: 20) {
                
                Button(String(Int(animationAmount[0]*12))) {
                    if animationAmount[0] == maximum {
                        cond[0] = false
                    } else if animationAmount[0] == minimum {
                        cond[0] = true
                    }
                    
                    animationAmount[0] = create(counter: Float(animationAmount[0]), cond: cond[0])
                    
                    if animationAmount[0] == CGFloat(llist[0]) {
                        self.Cols[0] = self.targetColor
                    } else {
                        self.Cols[0] = .random
                    }
                    print(animationAmount[0])
                }
                .padding(45)
                .background(self.Cols[0])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount[0])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                Button(String(Int(animationAmount[1]*12))) {
                    if animationAmount[1] == maximum {
                        cond[1] = false
                    } else if animationAmount[1] == minimum {
                        cond[1] = true
                    }
                    
                    animationAmount[1] = create(counter: Float(animationAmount[1]), cond: cond[1])
                        
                    if animationAmount[1] == CGFloat(llist[1]) {
                        self.Cols[1] = self.targetColor
                    } else {
                        self.Cols[1] = .random
                    }
                    print(animationAmount[1])
                }
                .padding(45)
                .background(self.Cols[1])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount[1])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
            }
            
            Button(String(Int(animationAmount[2]*12))) {
                if animationAmount[2] == maximum {
                    cond[2] = false
                } else if animationAmount[2] == minimum {
                    cond[2] = true
                }
                
                animationAmount[2] = create(counter: Float(animationAmount[2]), cond: cond[2])
                    
                print(animationAmount[2])
                
                if animationAmount[2] == CGFloat(llist[2]) {
                    self.Cols[2] = self.targetColor
                } else {
                    self.Cols[2] = .random
                }
            }
            .padding(45)
            .background(self.Cols[2])
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount[2])
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            HStack(spacing: 20) {
                
                Button(String(Int(animationAmount[3]*12))) {
                    if animationAmount[3] == maximum {
                        cond[3] = false
                    } else if animationAmount[3] == minimum {
                        cond[3] = true
                    }
                    
                    animationAmount[3] = create(counter: Float(animationAmount[3]), cond: cond[3])
                        
                    print(animationAmount[3])
                    
                    if animationAmount[3] == CGFloat(llist[3]) {
                        self.Cols[3] = self.targetColor
                    } else {
                        self.Cols[3] = .random
                    }
                }
                .padding(45)
                .background(self.Cols[3])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount[3])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                Button(String(Int(animationAmount[4]*12))) {
                    if animationAmount[4] == maximum {
                        cond[4] = false
                    } else if animationAmount[4] == minimum {
                        cond[4] = true
                    }
                    
                    animationAmount[4] = create(counter: Float(animationAmount[4]), cond: cond[4])
                        
                    print(animationAmount[4])
                    
                    if animationAmount[4] == CGFloat(llist[4]) {
                        self.Cols[4] = self.targetColor
                    } else {
                        self.Cols[4] = .random
                    }
                }
                .padding(45)
                .background(self.Cols[4])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount[4])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
            }
            
            Button(self.final) {
                if animationAmount[0] == CGFloat(llist[0]) && animationAmount[1] == CGFloat(llist[1]) {
                    if animationAmount[2] == CGFloat(llist[2]) && animationAmount[3] == CGFloat(llist[3]) {
                        if animationAmount[4] == CGFloat(llist[4]) {
                            self.final = "You Cracked the code"
                            self.shouldHide = false
                        }
                    }
                }
            }
            .padding(20)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            .foregroundColor(.black)
            
            Button("Click to exit the level") {
                self.presentationMode.wrappedValue.dismiss()
            }
            .opacity(shouldHide ? 0 : 1)
            .padding(20)
            
        }
        
    }
}

struct Medium_Previews: PreviewProvider {
    static var previews: some View {
        Medium()
    }
}
