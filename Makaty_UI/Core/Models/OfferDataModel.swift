//
//  OfferDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import Foundation

enum OfferType {
    case limited, unlimited
}

struct OfferDataModel: Identifiable {
    var id = UUID()
    var title: String
    var offerType: OfferType
    var imageUrl: String
    var beginDate: String = ""
    var endDate: String = ""
}
