//
//  Wave.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

// a cusstom wave view for future use
// to make the app more approchable and creative
struct Wave: Shape {
    
    // a function that creates a path, that overlays a shape, if filled
    // with colours
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX/2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX/2, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY/2))
        path.addLine(to: CGPoint(x: 0, y: 0))
        
        return path
    }
}

struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave()
    }
}
