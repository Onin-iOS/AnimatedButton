//
//  SpecialButtonViewModel.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

class SpecialButtonViewModel: ObservableObject {
    
    @Published var isPressed = false
    @Published var isAnimating = false
    
    @Published var trimEnd: CGFloat = 0
    @Published var timer: Timer?
    
    @Published var percent: Int = 0
    @Published var percentLoading = false // This state has the same function as 'isAnimating.' I chose to create a separate state because I prefer not to use 'withAnimation' on my percent text.
    
    func startLoading() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
            self.percent += 10
            
            withAnimation {
                self.trimEnd += 0.1
                
                if self.trimEnd == 1.0 {
                    self.trimEnd = 1
                }
            }
            
            if self.percent == 100 {
                self.percent = 100
                self.timer?.invalidate()
            }
        }
    }
    
    func mainButtonFunc() {
        percentLoading.toggle()
        percent = 0
        
        withAnimation {
            trimEnd = 0
            isAnimating.toggle()
            isPressed.toggle()
            startLoading()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.isPressed.toggle()
            }
        }
    }
    
}
