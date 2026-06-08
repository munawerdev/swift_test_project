//
//  ContentView.swift
//  swift_test_project
//
//  Created by Syed Munawer Ali on 05/06/2026.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) private var openUrl
    @State var number: Int = 0
    
    var body: some View {
        // 1. Wrap the entire view in a NavigationStack to manage routes
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Text("Hello, world \(number) munawer!")
                    .padding(60)
                
                // Increment Button
                Button(action: {
                    number += 1
                }) {
                    Text("Increment Number")
                }
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(Color.blue)
                
                // Decrement Button
                Button(action: {
                    number -= 1
                }) {
                    Text("Decrement Number")
                }
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(number == 0 ? Color.gray : Color.blue)
                .disabled(number == 0)
                
                // 2. REPLACED: Use NavigationLink directly instead of a Button with nested views
                NavigationLink(destination: LoginView()) {
                    Text("Go to Login")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.blue)
                        .padding(.top, 20)
                }
            }
            .padding()
            .navigationTitle("Home") // Adds a nice native header title
        }
    }
}

#Preview {
    ContentView()
}
