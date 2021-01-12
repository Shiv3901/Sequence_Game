//
//  Trial.swift
//  Idea
//
//  Created by Shivam Savani on 1/1/21.
//

import SwiftUI


// Trial view for the app, to test the app
struct Trial: View {
    
    //defining the variables for the testing
    // and initialising them
    @State var maximum: CGFloat = 2
    @State var minimum: CGFloat = 0.75
        
    @State var animationDuration: Double = 0.50
        
    @State private var animationAmount: CGFloat = 1
    @State var cond: Bool = true
        
    @State private var animationAmount1: CGFloat = 1
    @State var cond1: Bool = false
        
    @State var condition: Bool = false
        
    @State var llist: [Float] = creater()
        
    @State var shouldHide: Bool = false
        
    //    var body1: some View {
    //
    //        List(llist, id: \.self) { ll in
    //              Text(ll)
    //            }
    //
    //    }
    
    @Environment(\.presentationMode) var presentationMode
        
        
        
    @State var showingNewUserView = false
        
    var body: some View {
            
        VStack {
                
                
            Text("Sequence: \(Int(llist[0]*12))")
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
                .padding(50)
                .background(Color.orange)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .scaleEffect(animationAmount)
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                    
            }
                
            Button("Evaluate") {
                if llist[0] == Float(animationAmount) {
                    print("sdgh")
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
                    
        }
            
    }
            
}

struct Trial_Previews: PreviewProvider {
    static var previews: some View {
        Trial()
    }
}
