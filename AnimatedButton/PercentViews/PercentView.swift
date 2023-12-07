//
//  PercentView.swift
//  AnimatedButton
//
//  Created by ONIN on 12/7/23.
//

import SwiftUI

struct PercentView: View {
    
    @EnvironmentObject var specialButtonVM: SpecialButtonViewModel
    
    var body: some View {
        HStack(spacing: 5) {
            Text("\(specialButtonVM.percentLoading ? specialButtonVM.percent : 0)")
                .font(.system(size: specialButtonVM.isPressed ? 28 : 30, weight: .heavy, design: .monospaced))
                .foregroundStyle(specialButtonVM.percentLoading ? .white : .black)
                .opacity(specialButtonVM.percentLoading ? 1 : 0.5 )
                .blur(radius: specialButtonVM.percentLoading ? 0.6 : 0)
            
            Text("%")
                .font(.system(size: specialButtonVM.isPressed ? 28 : 30, weight: .heavy, design: .monospaced))
                .foregroundStyle(specialButtonVM.percentLoading ? .white : .black)
                .opacity(specialButtonVM.percentLoading ? 1 : 0.5 )
                .blur(radius: specialButtonVM.percentLoading ? 0.5 : 0)
        }
        
    }
}

#Preview {
    PercentView()
        .environmentObject(SpecialButtonViewModel())
}
