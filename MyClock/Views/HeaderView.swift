//
//  HeaderView.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct HeaderView: View {
    @Binding var isDark: Bool
    @Binding var isRotated: Bool

    var body: some View {
        VStack(spacing: 8) {
            HStack {
                
                Text("Dark/Light Mode")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: { isDark.toggle()}) {
                    
                    Image(systemName: isDark ? "sun.min.fill" : "moon.fill")
                        .font(.system(size: 16))
                        .foregroundColor(isDark ? .black : .white)
                        .padding()
                        .background(Color.primary)
                        .clipShape(Circle())
                } //Button
            } //HStack
            HStack {
                
                Text("Clock Type")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: { isRotated.toggle()}) {
                    
                    Image(systemName: isRotated ? "clock" : "rotate.3d")
                        .font(.system(size: 24))
                        .foregroundColor(isDark ? .black : .white)
                        .padding(12)
                        .background(Color.primary)
                        .clipShape(Circle())
                } //Button
            } //HStack
        } // VStack
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(isDark: .constant(false), isRotated: .constant(false))
    }
}
