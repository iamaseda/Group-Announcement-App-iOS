//
//  LoginButton.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/19/24.
//

import Foundation
import SwiftUI
import os

struct LoginButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Sign In")
                .fontWeight(.heavy)
                .font(.title3)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.red, Color(red: 0/255, green: 0/255, blue: 158/255)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
        }.padding().padding(.horizontal)
    }
}
