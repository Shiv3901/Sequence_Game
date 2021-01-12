//
//  Wave.swift
//  Idea
//
//  Created by Shivam Savani on 2/1/21.
//

import SwiftUI

struct Wave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: 0))
        
        return path
    }
}

struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave()
    }
}
