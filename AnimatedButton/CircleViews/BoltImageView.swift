//
//  BoltImageView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct BoltImageView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    var body: some View {
        if specialButtonVM.isAnimating {
            withAnimation {
                Image(systemName: "bolt")
                    .font(.system(size: specialButtonVM.isPressed ? 33 : 35))
                    .foregroundStyle(.white)
                    .blur(radius: 0.5)
            }
        } else {
            withAnimation {
                Image(systemName: "bolt")
                    .font(.system(size: specialButtonVM.isPressed ? 33 : 35))
                    .foregroundStyle(.black)
                    .opacity(0.5)
            }
        }
    }
}

#Preview {
    BoltImageView()
        .environmentObject(SpecialButtonViewModel())
}
