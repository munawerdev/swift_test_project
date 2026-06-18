//
//  BottomNavBar.swift
//  swift_test_project
//
//  Created by Syed Munawer Ali on 15/06/2026.
//

import SwiftUI
//
//struct BottomNavBar: View {
//    // Optional: Add a state variable to track the active tab explicitly
//    @State private var selectedTab:Int = 0
//    
//    var body: some View {
//        TabView(selection: $selectedTab) {
//            ContentView()
//                .tabItem {
//                    Label("Home", systemImage: "house.fill")
//                }
//                .tag(0)
//            Tab("Settings", systemImage: "slider.horizontal"){
//                Text("Settings")
//            }
//            LoginView()
//                .tabItem {
//                    Label("Account", systemImage: "person.crop.circle")
//                }
//                .tag(1)
//        }
//    }
//}
struct BottomNavBar: View {
    @State private var selectedTab: Int = 0
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        // You can use a tag-based selection or a data-driven selection
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house.fill", value: 0) {
                ContentView()
            }
            
            Tab("Settings", systemImage: "slider.horizontal.3", value: 1) {
                Text("Settings")
            }
            
            Tab("Account", systemImage: "person.crop.circle", value: 2) {
                LoginView()
            }
        }
        
    }
}

#Preview {
    BottomNavBar()
        .preferredColorScheme(.dark)
}
