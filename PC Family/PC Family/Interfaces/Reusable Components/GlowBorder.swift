//
//  GlowBorder.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/21/24.
//

import Foundation
import SwiftUI

struct GlowBorder: ViewModifier {
    var lineWidth: Int
    var color: Color
    func body(content: Content) -> some View {
        var newContent = AnyView(content)
        for _ in 0..<lineWidth {
            newContent = AnyView(newContent.shadow(color: color, radius: 1))
        }
        return newContent
    }
}
