//
//  AnimatedButtonApp.swift
//  AnimatedButton
//
//  Created by ONIN on 12/6/23.
//

import SwiftUI

@main
struct AnimatedButtonApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(SpecialButtonViewModel())
        }
    }
}
