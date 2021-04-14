//
//  Hour.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct Hour: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    var lengthPercent:CGFloat = 0.4
    var widthPercent: CGFloat = 0.015

    var body: some View {
        let arm = width * lengthPercent
        let thick = width * widthPercent
        Rectangle()
            .frame(width: thick, height: arm / 2)
            .cornerRadius(thick / 2)
            .foregroundColor(.green)
            .offset(y: -arm / 4)
            .rotationEffect(.init(degrees: (Double(currentTime.hour) + (Double(currentTime.min) / 60.0)) * 30.0))
//            .rotationEffect(.init(degrees: (Double(currentTime.hour) + (Double(currentTime.min) / 60) + (Double(currentTime.sec) / 3600)) * 30))
//            .shadow(radius: 2, x: 2, y: 0)

    }
}

struct Hour_Previews: PreviewProvider {
    static var previews: some View {
        Hour(currentTime: .constant(Time(hour: 12, min: 0, sec: 0)))
    }
}
