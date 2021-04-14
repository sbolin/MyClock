//
//  Home.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct Home: View {
    @Binding var isDark: Bool
    @Binding var isRotated: Bool
    var width = UIScreen.main.bounds.width
    @State var currentTime = Time(hour: 0, min: 0, sec: 0)
    @State var receiver = Timer.publish(every: 1, on: .current, in: .default)
        .autoconnect()
    var lengthPercent:CGFloat = 0.85
    
    
    var body: some View {
        VStack {
            
            HeaderView(isDark: $isDark, isRotated: $isRotated)
            .padding()
            
            Spacer(minLength: 0)
            
            ZStack {
                
                //Main Face
                ClockFace(isDark: $isDark, currentTime: $currentTime)
                
// Numbers
                TextFace(isDark: $isDark)
                
// Hour hand
//                Hour(currentTime: $currentTime)
                HourHand(currentTime: $currentTime)
//                Hand(offSet: 10)
//                    .fill(Color.green)
//                    .frame(width: 10, height: 0.4 * width)
//                    .rotationEffect(.init(degrees: (Double(currentTime.hour) + (Double(currentTime.min) / 60)) * 30))
//                    .shadow(color: .gray, radius: 2, x: 2, y: 0)
                
// Minute hand
//                Minute(currentTime: $currentTime)
                MinuteHand(currentTime: $currentTime)
//                Hand(offSet: 10)
//                    .fill(Color.blue)
//                    .frame(width: 8, height: 0.6 * width)
//                    .rotationEffect(.init(degrees: (Double(currentTime.min)) * 6))
//                    .shadow(color: .gray, radius: 2, x: 2, y: 0)

// Seconds hand
//                Second(currentTime: $currentTime)
                SecondHand(currentTime: $currentTime)
//                Hand(offSet: 10)
//                    .fill(Color.red)
//                    .frame(width: 4, height: 0.7 * width)
//                    .rotationEffect(.init(degrees: currentTime.sec * 6.0))
//                    .shadow(color: .gray, radius: 2, x: 2, y: 0)
                
// Center Circle
                CenterDot()
                
            } // ZStack/face
            .frame(width: width * lengthPercent, height: width * lengthPercent)
            .rotation3DEffect(isRotated ? .degrees(60) : .degrees(0), axis: (x: 30.0, y: 0.0, z: 0.0))

            
            // get locale
            LocalTime(currentTime: $currentTime)
            
            Spacer(minLength: 0)
            
        } // VStack
        .onAppear {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: Date())
            let min = calendar.component(.minute, from: Date())
            let sec = calendar.component(.second, from: Date())
//            withAnimation(Animation.spring()) {
            withAnimation(Animation.linear(duration: 1.0)) {
            self.currentTime = Time(hour: hour, min: min, sec: Double(sec))
            }
        }
        .onReceive(receiver) { (_) in
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: Date())
            let min = calendar.component(.minute, from: Date())
            let sec = Double(calendar.component(.second, from: Date()))
//            withAnimation(Animation.spring(
//                            response: 0.0,
//                            dampingFraction: 0.1,
//                            blendDuration: 0.0)) {

            withAnimation(Animation.linear(duration: 0)) {
            self.currentTime = Time(hour: hour, min: min, sec: sec)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(isDark: .constant(false), isRotated: .constant(false))
    }
}
