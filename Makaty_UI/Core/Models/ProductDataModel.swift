//
//  ProductDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 19/12/2022.
//

import SwiftUI

struct ProductDataModel: Identifiable {
    var id = UUID()
    var name: String
    var imageUrl: String
    var modality: String
    var pointsByPayInCash: String
    var pointsByPayInCredit: String
    var costByPayInCash: String
    var costByPayInCredit: String
}
