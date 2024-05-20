//
//  Login.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/19/24.
//

import Foundation
import SwiftUI
import Combine

private enum FocusableField: Hashable {
  case email
  case password
}

struct LoginView: View {
//  @EnvironmentObject var viewModel: AuthViewModel
  @Environment(\.dismiss) var dismiss

  @FocusState private var focus: FocusableField?

    @State var email = "PraiseChurch Member"

  var body: some View {
    VStack {
        Text("Welcome User!")
            .font(.largeTitle)
            .fontWeight(.black)
        LoginInput(data: $email, title: "Email", inputType: contentTypeEnum.email)
            .padding(.vertical)
        LoginInput(data: $email, title: "Password", inputType: contentTypeEnum.password)

//        if viewModel.authenticationState != .authenticating {
            LoginButton {
                //sommeFunction
            }
//        } else {
            ProgressView()
              .progressViewStyle(CircularProgressViewStyle(tint: .white))
              .padding(.vertical, 8)
              .frame(maxWidth: .infinity)
//        }
        VStack {
            Text("Sign Up")
                .fontWeight(.thin)
                .foregroundColor(Color.blue)
                .underline()
            Text("Forgot Password?")
                .fontWeight(.thin)
                .foregroundColor(Color.blue)
                .underline()
        }.padding(.top, 16).padding(.horizontal)
    }
    .listStyle(.plain)
    .padding()
//    .analyticsScreen(name: "\(Self.self)")
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      LoginView()
      LoginView()
        .preferredColorScheme(.dark)
    }
//    .environmentObject(AuthViewModel())
  }
}
