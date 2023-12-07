//
//  MainCircleView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct MainCircleView: View {
    var body: some View {
        Circle()
            .frame(width: 210)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("gradientA"), Color("gradientB")]), startPoint: .topTrailing, endPoint: .bottomLeading))
            .opacity(0.8)
            .shadow(radius: 3, x: 2, y: 3)
    }
}

#Preview {
    MainCircleView()
}
