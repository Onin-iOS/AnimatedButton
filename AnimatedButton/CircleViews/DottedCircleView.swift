//
//  DottedCircleView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct DottedCircleView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    var body: some View {
        withAnimation {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [1, 40]))
                .frame(width: 300, height: 300)
                .foregroundStyle(.black)
                .opacity(0.5)
        }
        
        withAnimation {
            Circle()
                .trim(from: 0, to: specialButtonVM.isAnimating ? specialButtonVM.trimEnd : 0)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [1, 40]))
                .frame(width: 300, height: 300)
                .foregroundStyle(.white)
                .blur(radius: 0.8)
        }
    }
}

#Preview {
    DottedCircleView()
        .environmentObject(SpecialButtonViewModel())
}
