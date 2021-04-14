//
//  CenterDot.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct CenterDot: View {
    var body: some View {
        Circle()
            .frame(width: 12, height: 12)
            .foregroundColor(.red)
            .overlay(
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(Color(.white))
            )
            .shadow(radius: 2, x: 2, y: 0)

    }
}

struct CenterDot_Previews: PreviewProvider {
    static var previews: some View {
        CenterDot()
    }
}
