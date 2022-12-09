//
//  CustomPointViewRow.swift
//  Makaty_UI
//
//  Created by Madiapps on 09/12/2022.
//

import SwiftUI

struct CustomPointViewRow: View {
    
    let model: PointModel
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.custom("HelveticaNeue-Light", size: 16))
                Divider()
                VStack(alignment: .leading, spacing: 8) {
                    PointLabelView(icon: "candybarphone", text: "Feugiat ut tempor")
                    PointLabelView(icon: "clock", text: "01/12/2022")
                }
            }
            VStack {
                Text("Points")
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                Text( model.type == .win ? "+\(model.totalPoints)" : "-\(model.totalPoints)")
                    .font(.custom("HelveticaNeue-Bold", size: 20))
            }
            .foregroundColor(.white)
            .padding(10)
            .background(Color.black.opacity(0.8))
        }
        .padding(10)
//    .background(Color.gray.opacity(0.1))
        .background(
            model.type == .win ? Color.green.opacity(0.4) : Color.red.opacity(0.4)
        )
    }
}

struct CustomPointViewRow_Previews: PreviewProvider {
    static var previews: some View {
        CustomPointViewRow(model: PointModel(id: "", title: "Ticket N°00123 ", type: .consume, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
    }
}
