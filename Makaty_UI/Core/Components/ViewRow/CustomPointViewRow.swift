//
//  CustomPointViewRow.swift
//  Makaty_UI
//
//  Created by Madiapps on 09/12/2022.
//

import SwiftUI

struct CustomPointViewRow: View {
    
    let model: OrderDataModel
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 10) {
                Text(model.title)
                    .textSubtitleStyle2()
                    .foregroundColor(Color("Black"))
                
                VStack(alignment: .leading, spacing: 8) {
                    LabelWithIcon(type: .shop, text: "iPhone 13 pro max, iPad 9... ")
                    LabelWithIcon(type: .time, text: "01/12/2022")
                }
            }
            
            Spacer()
            
            VStack {
                Text("POINTS")
                    .font(.custom("SFProText-Bold", size: 12))
                Text( model.type == .win ? "+\(model.totalPoints)" : "-\(model.totalPoints)")
                    .textSubtitleStyle()
            }
            .foregroundColor(.white)
            .padding(.vertical, 8)
            .padding(.horizontal, 14)
            .background(
                model.type == .win ? Color("Green") : Color("Red")
            )
        }
        .padding(.top, 16)
        .padding(.horizontal, 16)
        .padding(.bottom, 14)
        .border(Color("Gray").opacity(0.3), width: 1)

    }
}

struct CustomPointViewRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomPointViewRow(model: OrderDataModel(id: "", title: "Ticket N°00123 ", type: .consume, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
            CustomPointViewRow(model: OrderDataModel(id: "", title: "Ticket N°00123 ", type: .win, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
