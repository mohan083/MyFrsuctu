//
//  MyFrucutsApp.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 02/08/22.
//

import SwiftUI

@main
struct MyFrucutsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                FruitListScreen()
            }
        }
    }
}
