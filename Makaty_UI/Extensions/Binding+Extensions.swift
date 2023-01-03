//
//  Binding+Extensions.swift
//  Makaty_UI
//
//  Created by Madiapps on 29/12/2022.
//

import SwiftUI

extension Binding where Value == Bool {
    var not: Binding<Value> {
        Binding<Value>(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}
