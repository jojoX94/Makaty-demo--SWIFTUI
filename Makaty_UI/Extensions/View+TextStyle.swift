//
//  View+ButtonStyle.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

extension View {
    func textwithButtonStyle() -> some View {
        modifier(TextWithButtonStyle())
    }
    
    func textSubtitleStyle() -> some View {
        modifier(TextSubTtitle())
    }
}
