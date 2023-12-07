//
//  BackgroundView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("gradientA"), Color("gradientB")]), startPoint: .topTrailing, endPoint: .bottomLeading)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
