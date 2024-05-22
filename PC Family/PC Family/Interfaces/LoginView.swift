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
  @State private var contentHeight: CGFloat?

  var body: some View {
    VStack {
        VStack{
            GeometryReader{ proxy in
                Image("pclogomin")
                            .resizable()
                            .frame(width: proxy.size.width * 0.5)
                            .frame(width: proxy.size.width)
                            .onAppear() {
                                contentHeight = proxy.size.height * 0.37
                            }
            }
            .frame(maxHeight: contentHeight)
//            .background(Color.blue)
        }
    
        Text("Welcome to the Praise Church Family!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.vertical)

//        Spacer().frame(height: UIScreen.main.bounds.height * 0.1)
        LoginInput(data: $email, title: "Email", inputType: contentTypeEnum.email)
            .padding(.vertical)
        LoginInput(data: $email, title: "Password", inputType: contentTypeEnum.password)
            .padding(.bottom)

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
    .padding()
      Spacer()
//    .listStyle(.plain)
    
//    .analyticsScreen(name: "\(Self.self)")
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
      LoginView()
//    Group {
//      LoginView()
//      LoginView()
//        .preferredColorScheme(.dark)
//    }
//    .environmentObject(AuthViewModel())
  }
}
