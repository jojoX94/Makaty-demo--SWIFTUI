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
            VStack(alignment: .leading, spacing: 10) {
                Text(model.title)
                    .font(.custom("SFProText-Medium", size: 16))
                    .foregroundColor(Color("Black"))
                
                VStack(alignment: .leading, spacing: 8) {
                    PointLabelView(type: .shop, text: "iPhone 13 pro max, iPad 9... ")
                    PointLabelView(type: .time, text: "01/12/2022")
                }
            }
            
            Spacer()
            
            VStack {
                Text("Points")
                    .font(.custom("SFProText-Medium", size: 12))
                Text( model.type == .win ? "+\(model.totalPoints)" : "-\(model.totalPoints)")
                    .font(.custom("SFProText-Medium", size: 22))
            }
            .foregroundColor(.white)
            .padding(10)
            .background(
                model.type == .win ? Color("Green") : Color("Red")
            )
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 18)
        .border(Color("Gray").opacity(0.3), width: 1)

    }
}

struct CustomPointViewRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomPointViewRow(model: PointModel(id: "", title: "Ticket N°00123 ", type: .consume, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
            CustomPointViewRow(model: PointModel(id: "", title: "Ticket N°00123 ", type: .win, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
