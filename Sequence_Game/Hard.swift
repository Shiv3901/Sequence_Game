//
//  Hard.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI



func creater() -> [Float] {

    var llist: [Float] = [0, 0, 0, 0, 0, 0, 0, 0]
    
    let n: Int = 8
    
    for i in 0...1 {
        llist[i] = Float(Int.random(in: 2...4) * 3) / 12
        llist[n - 2 + i] = Float(Int.random(in: 2...4) * 3) / 12
    }

    for i in 2...(n-3) {
        llist[i] = Float(Int.random(in: 3...8) * 3) / 12
    }
    
    return llist
    
}

struct Hard: View {
    
    @State var maximum: CGFloat = 2
    @State var minimum: CGFloat = 0.75
    
    @State var Cols = [Color.orange, Color.red, Color.green, Color.blue, Color.yellow, Color.green, Color.red, Color.orange]
    
    @State var animationDuration: Double = 0.50
    
    @State private var animationAmount: [CGFloat] = [1, 1, 1, 1, 1, 1, 1, 1]
    @State var cond: [Bool] = [true, false, true, false, true, false, true, false]
    
    @State var condition: Bool = false
    
    @State var llist: [Float] = creater()
    
    @State var shouldHide: Bool = true
    
    @State var final: String = "Just there"
    
    @State private var showingSheet = false
    
    @State var targetColor = Color.white
    
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
        
        
        VStack{
            
            Text("             ")     
            
            
            
            Text("Sequence: \(Int(llist[0]*12)) | \(Int(llist[1]*12)) | \(Int(llist[2]*12)) | \(Int(llist[3]*12)) | \(Int(llist[4]*12)) | \(Int(llist[5]*12)) | \(Int(llist[6]*12)) | \(Int(llist[7]*12)) ")
                .font(.system(size: 13))
                .frame(width: 250, height: 20)
                .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
                .foregroundColor(Color.black)
            
            HStack {
                
                Button(String(Int(animationAmount[0]*12))) {
                    if animationAmount[0] == maximum - 1 {
                        cond[0] = true
                    } else if animationAmount[0] == minimum - 0.25{
                        cond[0] = false
                    }
                    
                    animationAmount[0] = create(counter: Float(animationAmount[0]), reverse: cond[0])
                        
                    if animationAmount[0] == CGFloat(llist[0]) {
                        self.Cols[0] = self.targetColor
                    } else {
                        self.Cols[0] = .random
                    }
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
                    if animationAmount[1] == maximum - 1{
                        cond[1] = true
                    } else if animationAmount[1] == minimum - 0.25 {
                        cond[1] = false
                    }
                    
                    animationAmount[1] = create(counter: Float(animationAmount[1]), reverse: cond[1])
                        
                    if animationAmount[1] == CGFloat(llist[1]) {
                        self.Cols[1] = self.targetColor
                    } else {
                        self.Cols[1] = .random
                    }
                }
                .padding(45)
                .background(self.Cols[1])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount[1])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                
                //.lineSpacing(30)
            }
            
            Button(String(Int(animationAmount[2]*12))) {
                if animationAmount[2] == maximum {
                    cond[2] = true
                } else if animationAmount[2] == minimum {
                    cond[2] = false
                }
                
                animationAmount[2] = create(counter: Float(animationAmount[2]), reverse: cond[2])
                    
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
            
            HStack {
                
                Button(String(Int(animationAmount[3]*12))) {
                    if animationAmount[3] == maximum {
                        cond[3] = true
                    } else if animationAmount[3] == minimum {
                        cond[3] = false
                    }
                    
                    animationAmount[3] = create(counter: Float(animationAmount[3]), reverse: cond[3])
                        
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
                        cond[4] = true
                    } else if animationAmount[4] == minimum {
                        cond[4] = false
                    }
                    
                    animationAmount[4] = create(counter: Float(animationAmount[4]), reverse: cond[4])
                        
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
                
                
                
                //.lineSpacing(30)
            }
            
            Button(String(Int(animationAmount[5]*12))) {
                if animationAmount[5] == maximum {
                    cond[5] = true
                } else if animationAmount[5] == minimum {
                    cond[5] = false
                }
                
                animationAmount[5] = create(counter: Float(animationAmount[5]), reverse: cond[5])
                    
                if animationAmount[5] == CGFloat(llist[5]) {
                    self.Cols[5] = self.targetColor
                } else {
                    self.Cols[5] = .random
                }
            }
            .padding(45)
            .background(self.Cols[5])
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount[5])
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
        }
        
        HStack {
            
            Button(String(Int(animationAmount[6]*12))) {
                if animationAmount[6] == maximum - 1{
                    cond[6] = true
                } else if animationAmount[6] == minimum - 0.25{
                    cond[6] = false
                }
                
                animationAmount[6] = create(counter: Float(animationAmount[6]), reverse: cond[6])
                    
                if animationAmount[6] == CGFloat(llist[6]) {
                    self.Cols[6] = self.targetColor
                } else {
                    self.Cols[6] = .random
                }
            }
            .padding(45)
            .background(self.Cols[6])
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount[6])
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            
            
            Button(String(Int(animationAmount[7]*12))) {
                if animationAmount[7] == maximum - 1 {
                    cond[7] = true
                } else if animationAmount[7] == minimum - 0.25 {
                    cond[7] = false
                }
                
                animationAmount[7] = create(counter: Float(animationAmount[7]), reverse: cond[7])
                    
                if animationAmount[7] == CGFloat(llist[7]) {
                    self.Cols[7] = self.targetColor
                } else {
                    self.Cols[7] = .random
                }
            }
            
            
            .padding(45)
            .background(self.Cols[7])
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount[7])
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            
            
            
            //.lineSpacing(30)
        }
        
        Button(self.final) {
            
            if animationAmount[0] == CGFloat(llist[0]) && animationAmount[1] == CGFloat(llist[1]) {
                
                if animationAmount[2] == CGFloat(llist[2]) && animationAmount[3] == CGFloat(llist[3]) {
                    
                    if animationAmount[4] == CGFloat(llist[4]) && animationAmount[5] == CGFloat(llist[5]) {
                    
                        if animationAmount[6] == CGFloat(llist[6]) && animationAmount[7] == CGFloat(llist[7]) {
//                            Text("You just Cracked the Code !!")
//                                .foregroundColor(.yellow)
    //                        self.$shouldHide = false
//                            self.presentationMode.wrappedValue.dismiss()
                            self.final = "You Cracked the Code"
                            self.shouldHide = false
                        }
                    }
                }
            }
            
        }
        .padding(5)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(40)
        .foregroundColor(.black)
        
        Button("Click to exit the level") {
            self.presentationMode.wrappedValue.dismiss()
        }
        .opacity(shouldHide ? 0 : 1)
        .padding(5)
        
        
        
        
        
        
        
        
        
        
        
    }
    
}

struct Hard_Previews: PreviewProvider {
    static var previews: some View {
        Hard()
    }
}
