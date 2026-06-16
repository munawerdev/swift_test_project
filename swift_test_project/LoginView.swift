//
//  LoginView.swift
//  swift_test_project
//
//  Created by Syed Munawer Ali on 06/06/2026.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @State private var isShowingAlert: Bool = false
    
    var body: some View {
        ScrollView() {
            
            
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                // The $ character tells SwiftUI to update the local state variables automatically as the user types
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.none) // Handy for email fields
                    .keyboardType(.emailAddress)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Home") {
//                    print("/*Logging*/ in with: \(email)")
                    isShowingAlert.toggle()
                       
                } .sheet(isPresented: $isShowingAlert) {
                    Text("Hello World")
                        .padding()
                    }
                .font(.headline)
                .buttonStyle(.borderedProminent) // Gives it a nice native tinted background fill
            }
                ForEach(1..<20){
                    index in 
                    Text("\(index)")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.bottom, 10)
                        .padding(.top, 10)
                }
            
        }
        .padding(.all)
    }
}

#Preview {
    LoginView()
}
