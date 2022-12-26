//
//  PaymentLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

enum PaymentType {
    case inCash, onTick
}

struct PaymentLabel: View {
    let paymentType: PaymentType
    let point: String
    let cost: String
    
    var body: some View {
        VStack(spacing: 8) {
            PointLabel(point: point, backgroundColor: paymentType == .inCash ? Color(hex: "#93117E") : Color(hex: "#00A0D9"))
            
            VStack(spacing: 4) {
                Text(paymentType == .inCash ? "Paiement comptant" : "Paiement à crédit ")
                    .font(.custom("SFProText-Bold", size: 14))
                    .foregroundColor(Color("Black"))
                Text(paymentType == .inCash ? "\(cost) Ar" : "\(cost) Ar/mois")
                    .font(.custom("SFProText-Regular", size: 14))
                    .foregroundColor(Color("Gray"))
            }
        }
    }
}

struct PaymentLabel_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PaymentLabel(paymentType: .inCash, point: "500", cost: "1 700 600")
            PaymentLabel(paymentType: .onTick, point: "400", cost: "100 000")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
