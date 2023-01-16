//
//  PointViewRow.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct PointViewRow: View {
    
    let model: OrderDataModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Libéllé de l’offre")
                    .font(.custom("SFProText-Light", size: 16))
                Spacer()
                Text("#1002")
                    .font(.custom("SFProText-Light", size: 16))
            }
            Divider()
            HStack(spacing: 50) {
                CustomLabel(icon: "clock", title: "Date", value: "01/12/2022")
                CustomLabel(icon: "exclamationmark.square", title: "Points consommés", value: "- 500 pts")
            }
        }
        .padding(10)
//    .background(Color.gray.opacity(0.1))
        .background(
            model.type == .win ? Color.green.opacity(0.4) : Color.red.opacity(0.4)
        )
    }
    
}

struct PointViewRow_Previews: PreviewProvider {
    static var previews: some View {
        PointViewRow(model: OrderDataModel(id: "", title: "", type: .consume, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
