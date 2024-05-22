//
//  SignUp.swift
//  PC Family
//
//  Created by Aseda Asomani on 5/22/24.
//

import Foundation
import SwiftUI
import Combine

private enum FocusableField: Hashable {
  case email
  case password
}

struct SignUp: View {
//  @EnvironmentObject var viewModel: AuthViewModel
  @Environment(\.dismiss) var dismiss

  @FocusState private var focus: FocusableField?

  @State var email = "Club Member"
  @State private var contentHeight: CGFloat?

  var body: some View {
    VStack {
            GeometryReader{ proxy in
                Image("pclogomin")
                            .resizable()
                            .frame(width: proxy.size.width * 0.4)
                            .frame(width: proxy.size.width)
                            .onAppear() {
                                contentHeight = proxy.size.height * 0.7
                            }
            }
            .frame(maxHeight: contentHeight)
            .edgesIgnoringSafeArea(.all)
//            .background(Color.blue)
        VStack{
            Text("Join the ____ Club Family!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.vertical)
                .lineLimit(nil)
            //        Spacer().frame(height: UIScreen.main.bounds.height * 0.1)
            LoginInput(data: $email, title: "First Name", inputType: contentTypeEnum.firstname)
                .padding(.vertical)
            LoginInput(data: $email, title: "Last Name", inputType: contentTypeEnum.lastname)
                .padding(.bottom)
            LoginInput(data: $email, title: "Email", inputType: contentTypeEnum.email)
                .padding(.bottom)
            LoginInput(data: $email, title: "Password", inputType: contentTypeEnum.password)
                .padding(.bottom)
            LoginInput(data: $email, title: "Re-enter Password", inputType: contentTypeEnum.repassw)
                .padding(.bottom)
            
            //        if viewModel.authenticationState != .authenticating {
            LoginButton {
                //sommeFunction
            }
            .padding(.vertical)
            //        } else {
            //            ProgressView()
            //              .progressViewStyle(CircularProgressViewStyle(tint: .white))
            //              .padding(.top, 16)
            //              .frame(maxWidth: .infinity)
            //        }
        }
        VStack {
            Text("Have an account? Sign In!")
                .fontWeight(.thin)
                .foregroundColor(Color.blue)
                .underline()
                .padding(.bottom, 5)
            Text("Forgot Password?")
                .fontWeight(.thin)
                .foregroundColor(Color.blue)
                .underline()
        }.padding(.top, 8).padding(.horizontal)
    }
    .padding()
      Spacer()
//    .listStyle(.plain)
    
//    .analyticsScreen(name: "\(Self.self)")
  }
}

struct SignupView_Previews: PreviewProvider {
  static var previews: some View {
      SignUp()
//    Group {
//      LoginView()
//      LoginView()
//        .preferredColorScheme(.dark)
//    }
//    .environmentObject(AuthViewModel())
  }
}
