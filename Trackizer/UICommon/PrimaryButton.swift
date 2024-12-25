//
//  PrimaryButton.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct PrimaryButton: View {
    @State var title: String = "Title"
    var onPressed: (()->())?
    
    var body: some View {
        Button {
            onPressed?()
        }label: {
            ZStack {
                Image("primary_btn")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                    .frame(width: .screenWidth, height: 48)
                Text(title)
                    .font(.customfont(.semibold, fontSize: 14))
                    .padding(.horizontal, 20)
            }
        }
        .foregroundColor(.white)
        .shadow(color: .secondaryC.opacity(0.3), radius: 5, y: 3)
    }
}

#Preview {
    PrimaryButton()
}
