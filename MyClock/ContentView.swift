//
//  ContentView.swift
//  MyClock
//
//  Created by Scott Bolin on 12-A-21.
//

import SwiftUI

struct ContentView: View {
    @State var isDark = false
    @State var isRotated = false
    var body: some View {
        
        NavigationView {
            Home(isDark: $isDark, isRotated: $isRotated)
                .navigationBarHidden(true)
                .preferredColorScheme(isDark ? .dark : .light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
