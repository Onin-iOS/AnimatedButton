//
//  CircleStrokeView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct CircleStrokeView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    var body: some View {
        withAnimation {
            Circle()
                .stroke(lineWidth: 10)
                .frame(width: 165)
                .foregroundStyle(.black)
                .opacity(0.5)
        }
        
        withAnimation {
            Circle()
                .trim(from: 0, to: specialButtonVM.isAnimating ? specialButtonVM.trimEnd : 0)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 165)
                .foregroundStyle(.white)
                .blur(radius: 2)
        }
    }
}

#Preview {
    CircleStrokeView()
        .environmentObject(SpecialButtonViewModel())
}
