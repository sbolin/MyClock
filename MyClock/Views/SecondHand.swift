//
//  SecondHand.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath
    
    func path(in rect: CGRect) -> Path {
        let path = Path(bezierPath.cgPath)
        let muliplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: muliplier, y: muliplier)
        return path.applying(transform)
    }
}

struct SecondHand: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        let frameSize:CGFloat = width > 340 ? 1.75 : 1.5
        let secAngle:Double = 6.0 * currentTime.sec // == 360.0 ? 0.0 : currentTime.sec * 6.0 // 360 sec / 60 sec/deg

        ScaledBezier(bezierPath: .secondHand)
            .fill(Color.orange)
            .frame(width: frameSize, height: frameSize)
            .offset(x: 0 + 1, y: 0 + 1)
            .rotationEffect(.init(degrees: secAngle))
    }
}

struct SecondHand_Previews: PreviewProvider {
    static var previews: some View {
        SecondHand(currentTime: .constant(Time(hour: 12, min: 0, sec: 0)))
    }
}
