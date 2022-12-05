//
//  View+HideKeyboard.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif



