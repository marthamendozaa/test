//
//  ContentView.swift
//  test
//
//  Created by Martha Mendoza Alfaro on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var value1 = 0
    @State private var value2 = 0
    var body: some View {
        HStack {
            Image(systemName: "arrow.up.circle")
                // Bounce with a scale-up animation.
                .symbolEffect(.bounce.up, value: value1)
                .onTapGesture {
                    value1 += 1
                }
            Image(systemName: "arrow.down.circle")
                // Bounce three times with a scale-down animation.
                .symbolEffect(.bounce.down, options: .repeat(3), value: value2)
                .onTapGesture {
                    value2 += 1
                }
        }
    }
}

#Preview {
    ContentView()
}
