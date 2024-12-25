//
//  SignInView.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct SignInView: View {
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    
    var body: some View {
        ZStack {
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                Spacer()
                
                RoundTextField(title: "E-mail address", text: $txtEmail,
                               keyboardType: .emailAddress)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
                RoundTextField(title: "Password", text: $txtPassword, keyboardType: .default, isPassword: true)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
                
                PrimaryButton(title: "Let's sign in", onPressed: {
                    print("primary button clicked")
                })
                .padding(.bottom, 150)
                
                Text("Don't have an account?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                SecondaryButton(title: "Register", onPressed: {
                    print("secondary button clicked")
                })
                .padding(.bottom, .bottomInsets)
            }
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SignInView()
}
