//
//  OfferView.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct OfferViewRow: View {
    let model: OfferDataModel
    
    
    var body: some View {
        ZStack {
            
            Image(model.imageUrl)
                .renderingMode(.original)
                .resizable()
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(model.title)
                        .foregroundColor(.white)
                        .textSubtitleStyle()
                        
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.white)
                        
                        if model.offerType == .unlimited {
                            Text("Durée illimitée")
                                
                        } else {
                            VStack {
                                Text("Du \(model.beginDate)")
                                    .foregroundColor(.white)
                                    .textBody()
                                Text("au \(model.endDate)")
                                    .foregroundColor(.white)
                                    .textBody()
                            }
                        }
                    }
                   
                }
                .padding(.leading, 20)
                
                Spacer()
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 143)
    
    }
}

struct OfferViewRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            OfferViewRow(model: OfferDataModel(title: "Permanente", offerType: .unlimited, imageUrl: "PermanentOffers_clean"))
            OfferViewRow(model: OfferDataModel(title: "Permanente", offerType: .limited, imageUrl: "AnnivOffers_clean", beginDate: "01/12/2022", endDate: "01/12/2022"))
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
