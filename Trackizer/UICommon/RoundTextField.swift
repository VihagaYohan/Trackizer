//
//  RoundTextField.swift
//  Trackizer
//
//  Created by Yohan on 2024-12-25.
//

import SwiftUI

struct RoundTextField: View {
    // states and bindings
    @State var title: String = "Title"
    @Binding var text: String
    @State var keyboardType: UIKeyboardType = .default
    var isPassword: Bool = false
    
    var body: some View {
        VStack {
            Text(title)
                .multilineTextAlignment(.leading)
                .font(.customfont(.regular, fontSize: 14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .foregroundColor(.gray50)
                .padding(.bottom, 20)
            
            if(isPassword) {
                SecureField("", text: $text)
                    .padding(15)
                    .frame(height: 48)
                    .overlay{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray70, lineWidth: 1)
                    }
                    .foregroundColor(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            }else {
                TextField("", text:$text)
                    .padding(15)
                    .frame(height: 48)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray70,lineWidth: 2)
                    }
                    .foregroundColor(.white)
                    .background(Color.gray60.opacity(0.05))
                    .cornerRadius(15)
            }
        }
    }
}

#Preview {
    @State var txt: String = ""
    RoundTextField(text : $txt)
}
