//
//  TextFace.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

struct TextFace: View {
    @Binding var isDark: Bool
    
    var width = UIScreen.main.bounds.width
    let lengthPercent: CGFloat = 0.85
    
    var body: some View {
        let arm = width * lengthPercent
        
        // Seconds and Min dots
        ZStack {
            ForEach(1..<13, id: \.self) { dot in
                VStack {
                    Text("\(dot)")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
//                        .frame(width: size, height: size)
                        .rotationEffect(.degrees(-(360 / 12 * Double(dot))))
                    Spacer()
                }
                .padding()
                .rotationEffect(.degrees(360 / 12 * Double(dot)))
            }
        }
        .frame(width: arm, height: arm)
    }
}

struct TextFace_Previews: PreviewProvider {
    static var previews: some View {
        TextFace(isDark: .constant(false))
    }
}
