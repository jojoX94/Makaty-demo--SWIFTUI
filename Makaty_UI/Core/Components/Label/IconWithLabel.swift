//
//  PointLabelView.swift
//  Makaty_UI
//
//  Created by Madiapps on 09/12/2022.
//

import SwiftUI

enum PointLabelType {
    case shop, time
}

struct LabelWithIcon: View {
    let type: PointLabelType
    let text: String
    var body: some View {
        HStack(spacing: 10) {
            Image(type == .shop ? "ShopIcon" : "ScheduleIcon")
                .font(.title3)
            Text(text)
                .font(.custom("SFProText-Regular", size: 14))
                .foregroundColor(Color("Gray"))
        }
    }
}

struct LabelWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LabelWithIcon(type: .shop, text: "Feugiat ut tempor")
            LabelWithIcon(type: .time, text: "Feugiat ut tempor")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
