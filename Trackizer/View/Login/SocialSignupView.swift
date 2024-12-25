//
//  SocialSignupView.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct SocialSignupView: View {
    var body: some View {
        ZStack {
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                Spacer()
                
                Button {
                    
                }label: {
                    ZStack {
                        Image("apple_btn")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Apple")
                                .font(.customfont(.semibold, fontSize: 14))
                        }
                    }
                }
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.3), radius: 5, y:3)
                .padding(.bottom, 15)
                
                Button {
                    
                }label: {
                    ZStack{
                        Image("google_btn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .screenWidth, height: 48)
                        
                        HStack {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            
                            Text("Sign up with Google")
                                .font(.customfont(.semibold, fontSize: 14))
                        }
                    }
                }
                .foregroundColor(.black)
                .shadow(color: .black.opacity(0.3), radius: 5, y:3)
                .padding(.bottom, 15)
                
                Text("or")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                SecondaryButton(title: "Sign up with E-mail", onPressed: {
                    print("secondary button clicked")
                })
                
                Text("By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray60)
                .padding(.bottom, .bottomInsets + 8)
            }
        }
        .ignoresSafeArea()
        .background(Color.gray80)
    }
}

#Preview {
    SocialSignupView()
}
