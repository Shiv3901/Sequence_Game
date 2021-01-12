//
//  Easy.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

// easy sequence level for the game

// random sequence generator, each time the view is called
func createrEasy() -> [Float] {
    
    // initialising a zeroes array for 3 buttons
    var llist: [Float] = [0, 0, 0]

    // for loop for generating target number for each buttons
    for i in 0...2 {
        // the range is set in a way that makes it look appealing
        llist[i] = Float(Int.random(in: 3...8) * 3) / 12
    }
    
    // returning the required generated array
    return llist
    
}

// the function that changes the size and value of the button
func create(counter: Float, reverse: Bool) -> CGFloat {
    
    // assigning the counter variable to count for changes
    var count = counter

    // if direction is false than add or else reduce
    if reverse == false {
        // adding 0.25 means that the size increase
        // by 3 for the user
        count += 0.25
    } else {
        // size decreases by 3
        count -= 0.25
    }
    
    // return the modified count as CGFloat to display it to the user
    return CGFloat(count)
}

// extension for generating a random colour each time .Color is called
extension Color {
    static var random: Color {
        
        // returning a randomn number for each rgb
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}

// easy level view for the game
struct Easy: View {
    
    // initialising all the variables for the game
    
    // the maximum and minimum size for the button
    @State var maximum: CGFloat = 2
    @State var minimum: CGFloat = 0.75
    
    // initial colours for the button when the level starts
    @State var Cols = [Color.blue, Color.red, Color.green]
    
    // duration set to 0.5 second
    @State var animationDuration: Double = 0.50
    
    // initial value of buttons start at 12 (1)
    @State private var animationAmount: [CGFloat] = [1, 1, 1]
    
    // intialising the direction that the button will go in
    // reverse being true is button decreasing in size
    @State var reverse: [Bool] = [false, true, false]
    
    // initialising the target array using the creator Easy function
    @State var target: [Float] = createrEasy()
    
    // it stays in hiding till the target is achieved
    @State var shouldHide: Bool = true
    
    // display for the evaluation button
    @State var final: String = "Evaluate"
    
    // the variable to get out if the target is achieved
    @State private var showingSheet = false
    
    // the target colur is white, so that it gives a feeling of disappearance
    @State var targetColor = Color.white
    
    @Environment(\.presentationMode) var presentationMode
    
    // the user view for the easy level
    var body: some View {
        
        // vertical stack for the alignment
        VStack(spacing: 50) {
            
            
            // displaying the target sequence and customizing it
            Text("Sequence: \(Int(target[0]*12)) | \(Int(target[1]*12)) | \(Int(target[2]*12))")
                .fontWeight(.bold)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(40)
                .foregroundColor(Color.black)
            
            // Horizontal stack for button to be on the same height
            HStack(spacing: 40){
                
                // first play button
                // it displays the value at which it currently is
                Button(String(Int(animationAmount[0]*12))) {
                    
                    //if statement to make sure the button does not
                    // go out of bound
                    if animationAmount[0] == maximum {
                        // if it reaches maximum, then reverse the direc
                        reverse[0] = true
                    } else if animationAmount[0] == minimum {
                        // when it reaches minimum stop the reverse direc
                        reverse[0] = false
                    }
                    
                    // with each button press, decide the new value of the button
                    // by passing it through the create function
                    animationAmount[0] = create(counter: Float(animationAmount[0]), reverse: reverse[0])
                    
                    // if statement to change the colour of the button to
                    // target colour if the value is matched with the target
                    if animationAmount[0] == CGFloat(target[0]) {
                        self.Cols[0] = self.targetColor
                    }
                    // else assign a randomly generated number
                    else {
                        self.Cols[0] = .random
                    }
                    
                    // printing out the value to the developer
                    // to keep track of what happened to study crashes
                    print(animationAmount[0])
                }
                // applying all the updated values to the button
                // so that the user can see the change and decide
                // their next step
                .padding(45)
                .background(self.Cols[0])
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)   //shape of the button being rectangle
                .scaleEffect(animationAmount[0])
                .animation(
                    Animation.easeInOut(duration: animationDuration)
                )
                
                //second play button
                Button(String(Int(animationAmount[1]*12))) {
                    if animationAmount[1] == maximum {
                        reverse[1] = true
                    } else if animationAmount[1] == minimum {
                        reverse[1] = false
                    }
                    
                    animationAmount[1] = create(counter: Float(animationAmount[1]), reverse: reverse[1])
                        
                    print(animationAmount[1])
                    
                    if animationAmount[1] == CGFloat(target[1]) {
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
                
                
                
            }
            
            // third play button
            Button(String(Int(animationAmount[2]*12))) {
                if animationAmount[2] == maximum {
                    reverse[2] = true
                } else if animationAmount[2] == minimum {
                    reverse[2] = false
                }
                
                animationAmount[2] = create(counter: Float(animationAmount[2]), reverse: reverse[2])
                    
                print(animationAmount[2])
                
                if animationAmount[2] == CGFloat(target[2]) {
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
            
            //button to evaluate if the sequence matches the target
            Button(self.final) {
                
                // hidding it if the target is not met
                self.shouldHide = true
                
                // checking all the button values with target values
                if animationAmount[0] == CGFloat(target[0]) {
                    if animationAmount[1] == CGFloat(target[1]) {
                        if animationAmount[2] == CGFloat(target[2]) {
                            
                            // if yes, then change the display to new message
                            self.final = "You Cracked the code"
                            // off the hide for the button to exit the level
                            self.shouldHide = false
                        }
                    }
                }
            }
            .padding(20)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            .foregroundColor(.black)
            
            // only displayed when the shouldHide variable is false
            Button("Click to exit the level") {
                self.presentationMode.wrappedValue.dismiss()
            }
            // opacity gives an effect of hiding 
            .opacity(shouldHide ? 0 : 1)
            .padding(20)
            
            
        }
        
    }
}

struct Easy_Previews: PreviewProvider {
    static var previews: some View {
        Easy()
    }
}
