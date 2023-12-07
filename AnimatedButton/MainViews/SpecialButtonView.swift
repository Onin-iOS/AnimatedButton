//
//  AnimatedButtonView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

struct SpecialButtonView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            MainCircleView()
            
            CircleStrokeView()
            
            MainButtonView()
            
            DottedCircleView()
            
            VStack(spacing: -2 ) {
                BoltImageView()
                
                PercentView()
            }
        }
    }
    
}

#Preview {
    SpecialButtonView()
        .environmentObject(SpecialButtonViewModel())
}

