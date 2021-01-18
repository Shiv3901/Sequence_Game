//
//  Winner.swift
//  Idea
//
//  Created by Shivam Savani on 24/12/20.
//

import SwiftUI

let llist: [Float] = [1, 0.75, 1.25, 1.75, 1.0, 1.25, 1.5, 1.0]



struct Winner: View {
    
    var body: some View {
        List(llist, id: \.self) { ll in
              Text(String(ll))
        }
    }
}

struct Winner_Previews: PreviewProvider {
    static var previews: some View {
        Winner()
    }
}
