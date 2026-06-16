//
//  BottomNavBar.swift
//  swift_test_project
//
//  Created by Syed Munawer Ali on 15/06/2026.
//

import SwiftUI

struct BottomNavBar: View {
    // Optional: Add a state variable to track the active tab explicitly
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            Spacer()
            LoginView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
                .tag(1)
        }
    }
}

#Preview {
    BottomNavBar()
}
