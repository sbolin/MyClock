//
//  ClockFace.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct ClockFace: View {
    @Binding var isDark: Bool
    @Binding var currentTime: Time
    
    var width = UIScreen.main.bounds.width
    let lengthPercent: CGFloat = 0.8
    
    var body: some View {
        let arm = width * lengthPercent
        ZStack {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 5)
                .background(Circle().fill(Color.white.opacity(0.1)))
            
            // Seconds and Min dots
            ForEach(0..<60, id: \.self) { dot in
//                var holdColor = Color.primary
                let size:CGFloat = (dot % 5) == 0 ? 6 : 3
                
//                if dot == currentTime.sec {
//                    holdColor = Color.red
//                } else if dot == currentTime.min {
//                    holdColor = Color.blue
//                } else if dot == currentTime.hour {
//                    holdColor = Color.green
//                }
//
//                let colorToUse = holdColor
                // Circle option
                Circle()
                    .fill(dot == Int(currentTime.sec) ? Color.red : Color.primary)
                    .frame(width: size, height: size)
                    .offset(y: arm / 2)
                    .rotationEffect(.init(degrees: Double(dot) * 6 - 180))
                
                // Rectangle option
                //                Rectangle()
                //                    .fill(Color.primary)
                //                    .frame(width: 2, height: (dot % 5) == 0 ? 15 : 5)
                //                    .offset(y: (dot % 5) == 0 ? (width - 110) / 2 : (width - 110) / 1.95)
                //                    .rotationEffect(.init(degrees: Double(dot) * 6))
            }
        }
    }
}

struct ClockFace_Previews: PreviewProvider {
    static var previews: some View {
        ClockFace(isDark: .constant(false), currentTime: .constant(Time(hour: 0, min: 0, sec: 0)))
    }
}
