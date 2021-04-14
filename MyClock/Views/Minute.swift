//
//  Minute.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct Minute: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    var lengthPercent: CGFloat = 0.6
    var widthPercent: CGFloat = 0.01
    
    var body: some View {
        let arm = width * lengthPercent
        let thick = width * widthPercent
        Rectangle()
            .frame(width: thick, height: arm / 2)
            .cornerRadius(thick / 2)
            .foregroundColor(.blue)
            .offset(y: -arm / 4)
            .rotationEffect(.init(degrees: Double(currentTime.min) * 6))
//            .rotationEffect(.init(degrees: (Double(currentTime.min) + (Double(currentTime.sec) / 60)) * 6))
//            .shadow(radius: 2, x: 2, y: 0)

    }
}

struct Minute_Previews: PreviewProvider {
    static var previews: some View {
        Minute(currentTime: .constant(Time(hour: 12, min: 0, sec: 0)))
    }
}
