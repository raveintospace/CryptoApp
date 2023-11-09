//
//  CryptoAppApp.swift
//  CryptoApp
//  https://youtu.be/KJoYaVnAfF8?si=y3r2PgDD05Xp9Vgr
//  Created by Uri on 9/11/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
