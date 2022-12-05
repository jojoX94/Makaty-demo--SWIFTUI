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
            .font(.custom("HelveticaNeue-Medium", size: 14))
            .frame(width: 228, height: 40)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .foregroundColor(.gray)
            )
    }
}
