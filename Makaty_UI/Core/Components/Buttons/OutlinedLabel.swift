//
//  OutlinedLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 23/12/2022.
//

import SwiftUI

struct OutlinedLabel: View {
    let label: String
    let iconName: String
    
    var body: some View {
        HStack(spacing: 8) {
            Text(label)
                .font(.custom("SFProText-Regular", size: 14))
            Image(iconName)
                .renderingMode(.original)
        }
        .foregroundColor(Color("Gray"))
        .padding(.vertical, 16)
        .padding(.horizontal, 24)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color("Gray"), lineWidth: 1)
        )
    }
}

struct OutlinedLabel_Previews: PreviewProvider {
    static var previews: some View {
        OutlinedLabel(label: "MAKATY", iconName: "ArrowRightIcon")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
