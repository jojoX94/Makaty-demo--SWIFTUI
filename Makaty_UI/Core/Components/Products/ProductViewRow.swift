//
//  ProductViewRow.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct ProductViewRow: View {
    let model: ProductDataModel
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 16) {
                Image("ProductImg")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                VStack(alignment: .leading, spacing: 16) {
                    Text(model.name)
                        .textSubtitleStyle()
                        .foregroundColor(Color("Blue"))
                    Divider()
                    VStack {
                        HStack(spacing: 25) {
                            PaymentLabel(paymentType: .inCash, point: "500", cost: "1 795 000")
                            PaymentLabel(paymentType: .onTick, point: "300", cost: "500 000")
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            VStack(alignment: .leading, spacing: 6) {
                Text("Modalité")
                    .textSubtitleStyle2()
                Text(model.modality)
                    .textBody()
                    .foregroundColor(Color("Gray"))
                    .lineLimit(4)
                    .lineSpacing(4)
            }
        }
        .padding()
        .border(Color("LightGray"), width: 1)
    }
}

struct ProductViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductViewRow(model: ProductDataModel(name: "Watch SE", imageUrl: "", modality: "Euismod sodales habitant ligula pulvinar sagittis. Id quis turpis lectus convallis viverra et potenti mattis. Libero facilisis nisl tortor morbi neque.", pointsByPayInCash: "500", pointsByPayInCredit: "300", costByPayInCash: "1 795 000", costByPayInCredit: "100 000"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
