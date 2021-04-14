//
//  Hand.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

struct Hand: Shape {
    var offSet: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(
            in: CGRect(origin: CGPoint(x: rect.origin.x, y: rect.origin.y + offSet), size: CGSize(width: rect.width, height: rect.height / 2 - offSet)),
            cornerSize: CGSize(width: rect.width / 2, height: rect.width / 2))
        return path
    }
}
