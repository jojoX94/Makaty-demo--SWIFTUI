//
//  TextSubTitle.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct TextSubTtitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("SFProText-Bold", size: 22))
            .foregroundColor(Color("Blue"))
    }
}
