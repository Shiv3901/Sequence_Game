

func creater() -> [Float] {

    var llist: [Float] = [0, 0, 0, 0, 0, 0, 0, 0]
    
    let n: Int = 8

    for i in 0...(n-1) {
        llist[i] = Float(Int.random(in: 2...8) * 3) / 12
    }
    
    return llist
    
}


var ll = creater()

print(ll)

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

struct ButtonPer: View {
    
    @State var aniAm: CGFloat = 1
    @State var condition = true
    
    @State var maximum: CGFloat = 2
    @State var minimum: CGFloat = 0.75
    
    @State var animationDuration: Double = 0.50
    
    @State var breaking: Bool = false
    @State var Bval: Float = -1
    
    
    var body: some View {
        Button(String(Int(aniAm*12))) {
            if aniAm == maximum {
                condition = false
            } else if aniAm == minimum {
                condition = true
            }
            
            aniAm = create(counter: Float(aniAm), cond: condition)
                
            print(aniAm)
        }
        .padding(50)
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        .scaleEffect(aniAm)
        .animation(
            Animation.easeInOut(duration: animationDuration)
        )
    }
    
    func checkCon() -> Bool {
        if Float(aniAm) == Bval {
            return true
        }
        
        return false
    }
    
}



struct ContentView: View {
    
    
    @State var llist: [Float] = creater()
        
    var body: some View {
        
        //body1()
        
        let c1 = ButtonPer(maximum: 1, minimum: 0.5, Bval: llist[0])
        let c2 = ButtonPer(maximum: 1, minimum: 0.5, Bval: llist[1])
        let c3 = ButtonPer(Bval: llist[2])
        let c4 = ButtonPer(Bval: llist[3])
        let c5 = ButtonPer(Bval: llist[4])
        let c6 = ButtonPer(Bval: llist[5])
        let c7 = ButtonPer(maximum: 1, minimum: 0.5, Bval: llist[6])
        let c8 = ButtonPer(maximum: 1, minimum: 0.5, Bval: llist[7])
        
        VStack {
            
            
            
            Text("Sequence: \(Int(llist[0]*12)) | \(Int(llist[1]*12)) | \(Int(llist[2]*12)) | \(Int(llist[3]*12)) | \(Int(llist[4]*12)) | \(Int(llist[5]*12)) | \(Int(llist[6]*12)) | \(Int(llist[7]*12)) ")
                
            
                
                .foregroundColor(.yellow)
            
            HStack {
                
                c1
                c2
                
            }
            
            c3
            
            HStack {
                
                c4
                c5
                
            }
            
            c6
            
            HStack {
                
                c7
                c8
                
            }
            
            Button("Evaluate") {
                
                
            }
            
        }
        
        
       
        
        
    }
        
    
    
    
    var body1: some View {
        Text("You just Cracked the Game !!")
            .background(Color.orange)
            .foregroundColor(.white)
    }
    
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



