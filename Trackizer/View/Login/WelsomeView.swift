//
//  WelsomeView.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct WelsomeView: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                Spacer()
                Text("This is a subscription tracking app built with SWIFT UI for iOS platform")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                PrimaryButton(title: "Get Started", onPressed: {
                    print("primary button clicked")
                })
                .padding(.bottom, 15)
                
                SecondaryButton(title: "I have an account", onPressed: {
                    print("secondary button clicked")
                })
                .padding(.bottom, .bottomInsets)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelsomeView()
}
