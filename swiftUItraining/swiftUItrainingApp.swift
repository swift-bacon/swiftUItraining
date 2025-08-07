//
//  swiftUItrainingApp.swift
//  swiftUItraining
//
//  Created by Unit27 on 07/08/2025.
//

import SwiftUI

@main
struct swiftUItrainingApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                PeopleView()
                    .tabItem {
                        Symbols.person
                        Text("Home")
                    }
            }
        }
    }
}
