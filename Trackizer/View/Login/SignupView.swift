//
//  SignupView.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct SignupView: View {
    // states
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
                
                HStack {
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 2)
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 2)
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 2)
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                        .padding(.horizontal, 2)
                }
                .padding(.horizontal)
                .foregroundColor(.gray70)
                .padding(.bottom, 20)
                
                Text("Use 8 or more characters with a mix of letters,\nnumbers & symbols.")
                    .multilineTextAlignment(.leading)
                    .font(.customfont(.regular, fontSize: 12))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                PrimaryButton(title: "Get Started, it's free", onPressed: {
                    print("primary button clicked")
                })
                .padding(.bottom, 150)
                
                Text("Do you have already an account?")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                SecondaryButton(title: "I have an account", onPressed: {
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
    SignupView()
}
