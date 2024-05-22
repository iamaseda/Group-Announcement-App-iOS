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
                .background(RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.black, lineWidth: 1))
                    .background(LinearGradient(gradient: Gradient(stops: [
                        .init(color: Color(hex: "#FF0000"), location: 0),
                        .init(color: Color(hex: "#BF0640"), location: 0.3),
                        .init(color: Color(hex: "#800D80"), location: 0.45), // Adjust the location for the transition from red to purple
                        .init(color: Color(hex: "#4413BB"), location: 0.7), // Adjust the location for the transition from purple to blue
                        .init(color: Color(hex: "#0019FF"), location: 1)
                    ]), startPoint: .leading, endPoint: .trailing))
//                    .mask(LinearGradient(gradient: Gradient(stops: [
//                        .init(color: .black, location: 0),
//                        .init(color: .black, location: 0.45), // Adjust the location to start the transition earlier or later
//                        .init(color: .black, location: 0.5),
//                        .init(color: .black, location: 0.55),
//                        .init(color: .black, location: 1)
//                    ]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
        }.padding().padding(.horizontal)
    }
}


