//
//  OfferViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

@MainActor
class OfferViewModel: ObservableObject {
    @Published var offers: [OfferDataModel]
    
    init() {
        offers = [
            OfferDataModel(title: "Permanente", offerType: .unlimited, imageUrl: "PermanentOffers_clean"),
            OfferDataModel(title: "Spéciale Noël", offerType: .limited, imageUrl: "NoelOffers_clean", beginDate: "01/12/2022", endDate: "31/12/2022"),
            OfferDataModel(title: "Anniversaire", offerType: .limited, imageUrl: "AnnivOffers_clean", beginDate: "01/12/2022", endDate: "31/12/2022")
        ]
    }
}
