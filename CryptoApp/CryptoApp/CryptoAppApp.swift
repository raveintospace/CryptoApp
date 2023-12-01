//
//  CryptoAppApp.swift
//  CryptoApp
//  https://youtu.be/KJoYaVnAfF8?si=y3r2PgDD05Xp9Vgr
//  Created by Uri on 9/11/23.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    // override navigationBarTitles
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)  // -> Available for the whole app
                
                LaunchView()
            }            
        }
    }
}
