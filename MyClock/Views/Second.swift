//
//  Second.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct Second: View {
    @Binding var currentTime: Time
    var width = UIScreen.main.bounds.width
    var lengthPercent: CGFloat = 0.8
    var widthPercent: CGFloat = 0.005

    var body: some View {
        let arm = width * lengthPercent
        let thick = width * widthPercent
        let sec = currentTime.sec
        ZStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: thick, height: arm / 1.8)
                .offset(y: -arm / 8)
            
            Circle()
                .stroke(lineWidth: 2.0)
                .foregroundColor(Color.red)
                .frame(width: 4 * thick, height: 8)
                .offset(y: arm / 6)
        }
        .rotationEffect(.init(degrees: sec * 6))
 //       .shadow(radius: 2, x: 2, y: 0)
    }
}

struct Second_Previews: PreviewProvider {
    static var previews: some View {
        Second(currentTime: .constant(Time(hour: 12, min: 0, sec: 0)))
    }
}
