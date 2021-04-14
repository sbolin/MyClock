//
//  LocalTime.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct LocalTime: View {
    @Binding var currentTime: Time
    
    var body: some View {
        VStack {
            Text(Locale.current.localizedString(forRegionCode: Locale.current.regionCode!) ?? "")
                .font(.system(size: 32, weight: .medium, design: .rounded))
                .padding(.top, 24)
            
            Text(getTime())
                .font(.system(size: 44, weight: .semibold, design: .rounded))
        }
    }
    
    func getTime() -> String {
        let calendar = Calendar.current
        let format = DateFormatter()
        format.dateFormat = "hh:mm a"
        let hour = currentTime.hour
        let min = currentTime.min
        let sec = currentTime.sec
        let dateComponents =
            DateComponents(calendar: calendar,
                           hour: hour, minute: min, second: Int(sec))
        let date = calendar.date(from: dateComponents) ?? Date()
        return format.string(from: date)
    }
}

struct LocalTime_Previews: PreviewProvider {
    static var previews: some View {
        LocalTime(currentTime: .constant(Time(hour: 0, min: 0, sec: 0)))
    }
}
