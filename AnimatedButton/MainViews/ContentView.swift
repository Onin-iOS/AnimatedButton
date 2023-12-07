//
//  ContentView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SpecialButtonView()
            .environmentObject(SpecialButtonViewModel())
    }
}

#Preview {
    ContentView()
}
