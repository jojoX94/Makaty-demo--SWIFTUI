//
//  FixedButton.swift
//  Makaty_UI
//
//  Created by Madiapps on 03/01/2023.
//

import SwiftUI

enum ButtonStyle {
    case outlined, filled
}

struct FixedButton: View {
    let style:ButtonStyle
    let label: String
    let action: ()->Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(label)
                .font(.custom("SFProText-Bold", size: 16))
                .foregroundColor(style == .filled ? Color("White") : Color("Gray"))
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(style == .filled ? Color("Black") : .clear, strokeBorder: style == .filled ? .clear : Color("Gray"))
                    
                        
            )
        }
    }
}

struct FixedButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FixedButton(style: .filled, label: "Activer les notifications"){}
            FixedButton(style: .outlined, label: "Plus tard"){}
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
