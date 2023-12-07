//
//  MainButtonView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct MainButtonView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
    let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        Button {
            specialButtonVM.mainButtonFunc()
            
            impactFeedbackGenerator.prepare()
            impactFeedbackGenerator.impactOccurred()
        } label: {
            withAnimation {
                Circle()
                    .frame(width: specialButtonVM.isPressed ? 160 : 165)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("forButtonA"), Color("forButtonB")]), startPoint: .top, endPoint: .bottom))
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    MainButtonView()
        .environmentObject(SpecialButtonViewModel())
}
