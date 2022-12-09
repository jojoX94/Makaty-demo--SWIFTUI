//
//  PointLabelView.swift
//  Makaty_UI
//
//  Created by Madiapps on 09/12/2022.
//

import SwiftUI

struct PointLabelView: View {
    let icon: String
    let text: String
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .font(.title3)
            Text(text)
                .font(.custom("HelveticaNeue-Regular", size: 14))
        }
        .foregroundColor(.black.opacity(0.7))
    }
}

struct PointLabelView_Previews: PreviewProvider {
    static var previews: some View {
        PointLabelView(icon: "clock", text: "Feugiat ut tempor")
    }
}
