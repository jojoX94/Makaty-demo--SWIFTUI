//
//  ButtonStyle.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct TextWithButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("SFProText-Medium", size: 14))
            .padding(.vertical, 16)
            .padding(.horizontal, 24)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.black)
            )
    }
}
