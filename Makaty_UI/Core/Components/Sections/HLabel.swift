//
//  HLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 19/12/2022.
//

import SwiftUI

enum SizeString {
    case regular, medium
}

struct HLabel: View {
    let label: String
    let value: String
    let labelColor: String
    let size: SizeString
    
    init(label: String, value: String, labelColor: String = "Gray", size: SizeString = .regular) {
        self.label = label
        self.value = value
        self.labelColor = labelColor
        self.size = size
    }
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Text(value)
        }
        .font(.custom(size == .regular ? "SFProText-Regular" : "SFProText-Bold" , size: size == .regular ? 14 : 16))
        .foregroundColor(Color(labelColor))
    }
}

struct HLabel_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 32) {
            HLabel(label: "iPhone 13 pro max (x1)", value: "3 000 000 Ar")
            HLabel(label: "Total", value: "3 250 000 Ar", labelColor: "Black", size: .medium)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
