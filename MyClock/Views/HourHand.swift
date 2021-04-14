//
//  HourHand.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

struct HourHand: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        let frameSize:CGFloat = width > 340 ? 1.75 : 1.5
        let hourAngle = (Double(currentTime.hour) + Double(currentTime.min) / 60.0) * 30.0 // 360 / 12
        
        ZStack {
            ScaledBezier(bezierPath: .hourHand)
                .fill(Color.white)
            ScaledBezier(bezierPath: .hourHand)
                .stroke(Color.orange, lineWidth: 2)
        }
        .frame(width: frameSize, height: frameSize)
        .offset(x: 0 + 1, y: 0 + 1)
        .rotationEffect(.init(degrees: hourAngle))
    }
}

struct HourHand_Previews: PreviewProvider {
    static var previews: some View {
        HourHand(currentTime: .constant(Time(hour: 0, min: 0, sec: 0)))
    }
}
