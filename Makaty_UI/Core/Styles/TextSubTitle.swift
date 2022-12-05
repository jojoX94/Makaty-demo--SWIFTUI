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
            .font(.custom("HelveticaNeue-Medium", size: 16))
    }
}
