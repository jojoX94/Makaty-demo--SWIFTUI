//
//  TipDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import Foundation

struct TipDataModel: Identifiable {
    var id = UUID()
    var imageUrl: String
    var title: String
    var description: String
    var category: TipFilterViewModel
}
