//
//  ContentView.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var maximum: CGFloat = 2
    @State var minimum: CGFloat = 0.75
    
    @State var animationDuration: Double = 0.50
    
    @State private var animationAmount: CGFloat = 1
    @State var cond: Bool = true
    
    @State private var animationAmount1: CGFloat = 1
    @State var cond1: Bool = false
    
    @State private var animationAmount2: CGFloat = 1
    @State var cond2: Bool = true

    @State private var animationAmount3: CGFloat = 1
    @State var cond3: Bool = false
    
    @State private var animationAmount4: CGFloat = 1
    @State var cond4: Bool = true
    
    @State private var animationAmount5: CGFloat = 1
    @State var cond5: Bool = false
    
    @State private var animationAmount6: CGFloat = 1
    @State var cond6: Bool = true

    @State private var animationAmount7: CGFloat = 1
    @State var cond7: Bool = false
    
    @State var condition: Bool = false
    
    @State var llist: [Float] = creater()
    
    @State var shouldHide: Bool = true
    
    @State var final: String = "Just there"
    
    
    
//    var body1: some View {
//
//        List(llist, id: \.self) { ll in
//              Text(ll)
//            }
//
//    }
    
    @State private var showingSheet = false
    
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
        
        
//        NavigationView {
        //body1()
        
        VStack {
            
            
            
            
            Text("Sequence: \(Int(llist[0]*12)) | \(Int(llist[1]*12)) | \(Int(llist[2]*12)) | \(Int(llist[3]*12)) | \(Int(llist[4]*12)) | \(Int(llist[5]*12)) | \(Int(llist[6]*12)) | \(Int(llist[7]*12)) ")
                
            
                
                .foregroundColor(.yellow)
            
            HStack {
                
                Button(String(Int(animationAmount*12))) {
                    if animationAmount == maximum - 1 {
                        cond = false
                    } else if animationAmount == minimum - 0.25{
                        cond = true
                    }
                    
                    animationAmount = create(counter: Float(animationAmount), cond: cond)
                        
                    print(animationAmount)
                }
                .padding(45)
                .background(Color.orange)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount)
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                
                
                Button(String(Int(animationAmount1*12))) {
                    if animationAmount1 == maximum - 1{
                        cond1 = false
                    } else if animationAmount1 == minimum - 0.25 {
                        cond1 = true
                    }
                    
                    animationAmount1 = create(counter: Float(animationAmount1), cond: cond1)
                        
                    print(animationAmount1)
                }
                .padding(45)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount1)
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                
                //.lineSpacing(30)
            }
            
            Button(String(Int(animationAmount2*12))) {
                if animationAmount2 == maximum {
                    cond2 = false
                } else if animationAmount2 == minimum {
                    cond2 = true
                }
                
                animationAmount2 = create(counter: Float(animationAmount2), cond: cond2)
                    
                print(animationAmount2)
            }
            .padding(45)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount2)
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            HStack {
                
                Button(String(Int(animationAmount3*12))) {
                    if animationAmount3 == maximum {
                        cond3 = false
                    } else if animationAmount3 == minimum {
                        cond3 = true
                    }
                    
                    animationAmount3 = create(counter: Float(animationAmount3), cond: cond3)
                        
                    print(animationAmount3)
                }
                .padding(45)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount3)
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                
                
                Button(String(Int(animationAmount4*12))) {
                    if animationAmount4 == maximum {
                        cond4 = false
                    } else if animationAmount4 == minimum {
                        cond4 = true
                    }
                    
                    animationAmount4 = create(counter: Float(animationAmount4), cond: cond4)
                        
                    print(animationAmount4)
                }
                .padding(45)
                .background(Color.yellow)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount4)
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                
                
                //.lineSpacing(30)
            }
            
            Button(String(Int(animationAmount5*12))) {
                if animationAmount5 == maximum {
                    cond5 = false
                } else if animationAmount5 == minimum {
                    cond5 = true
                }
                
                animationAmount5 = create(counter: Float(animationAmount5), cond: cond5)
                    
                print(animationAmount5)
            }
            .padding(45)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount5)
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
        }
        
        HStack {
            
            Button(String(Int(animationAmount6*12))) {
                if animationAmount6 == maximum - 1{
                    cond6 = false
                } else if animationAmount6 == minimum - 0.25{
                    cond6 = true
                }
                
                animationAmount6 = create(counter: Float(animationAmount6), cond: cond6)
                    
                print(animationAmount6)
            }
            .padding(45)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount6)
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            
            
            Button(String(Int(animationAmount7*12))) {
                if animationAmount7 == maximum - 1 {
                    cond7 = false
                } else if animationAmount7 == minimum - 0.25 {
                    cond7 = true
                }
                
                animationAmount7 = create(counter: Float(animationAmount7), cond: cond7)
                    
                print(animationAmount7)
            }
            
            
            .padding(45)
            .background(Color.orange)
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .scaleEffect(animationAmount7)
            .animation(
                Animation.easeInOut(duration: animationDuration)
            )
            
            
            
            
            //.lineSpacing(30)
        }
        
        Button(self.final) {
            
            if animationAmount == CGFloat(llist[0]) && animationAmount1 == CGFloat(llist[1]) {
                
                if animationAmount2 == CGFloat(llist[2]) && animationAmount3 == CGFloat(llist[3]) {
                    
                    if animationAmount4 == CGFloat(llist[4]) && animationAmount5 == CGFloat(llist[5]) {
                    
                        if animationAmount6 == CGFloat(llist[6]) && animationAmount7 == CGFloat(llist[7]) {
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
        
        Button("Click to exit the level") {
            self.presentationMode.wrappedValue.dismiss()
        }
        .opacity(shouldHide ? 0 : 1)
        .padding(5)
        
        
        
        
        
        
        
        
        
        
        
    }
    
//    .navigationBarTitle("")
//                    .navigationBarHidden(true)
        
//    }
    
    
    
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



