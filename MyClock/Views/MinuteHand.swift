//
//  MinuteHand.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

struct MinuteHand: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        let frameSize:CGFloat = width > 340 ? 1.75 : 1.5
        let minuteAngle: Double = Double(currentTime.min) * 6.0 // 360 deg / 60 min

        ZStack {
            ScaledBezier(bezierPath: .minuteHand)
                .fill(Color.white)
            ScaledBezier(bezierPath: .minuteHand)
                .stroke(Color.orange, lineWidth: 2)
        }
        .frame(width: frameSize, height: frameSize)
        .offset(x: 0 + 1, y: 0 + 1)
        .rotationEffect(.init(degrees: minuteAngle))
//        .rotationEffect(.init(degrees: (Double(currentTime.min) + (Double(currentTime.sec) / 60)) * 6))
    }
}

struct MinuteHand_Previews: PreviewProvider {
    static var previews: some View {
        MinuteHand(currentTime: .constant(Time(hour: 0, min: 0, sec: 0)))
    }
}
