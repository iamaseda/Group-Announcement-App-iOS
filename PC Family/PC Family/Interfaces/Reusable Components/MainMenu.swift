//
//  MainMenu.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/21/24.
//

import Foundation
import SwiftUI

struct MainMenu: View {
    
    let onMenuItemPress: ((String) -> Void)?
    
    @ViewBuilder
    func MenuItem(_ title: String, systemImage: String) -> some View {
        Button {
            onMenuItemPress?(title)
        } label: {
            Label(title, systemImage: systemImage)
        }
    }
    
    var body: some View {
        Menu {
            MenuItem("Home", systemImage: "house")
            MenuItem("Settings", systemImage: "gearshape.fill")
            MenuItem("Announcements", systemImage: "speaker.fill")
            MenuItem("Calendar", systemImage: "calendar")
            Button("Sign Out", systemImage: "house.fill", role: .destructive) {
//                authViewModel.signOut()
            }
        } label: {
            Circle()
                .fill(.gray.opacity(0.15))
                .frame(width: 30, height: 30)
                .overlay {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 13.0, weight: .semibold))
                        .imageScale(.large)
                        .foregroundColor(Color("ThemeBlue"))
                }
                .padding()
                .padding(.top, -15.0)
            
        }
    }
}

#Preview {
    MainMenu(onMenuItemPress: nil)
}
