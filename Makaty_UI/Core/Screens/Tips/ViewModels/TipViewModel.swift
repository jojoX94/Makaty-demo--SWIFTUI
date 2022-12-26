//
//  TipViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import Foundation
import SwiftUI

@MainActor
class TipViewModel: ObservableObject {
    @Published var tipList = [TipDataModel]()
    
    init() {
        tipList = [
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Watch),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPhone),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPad),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac),
            TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .iPad),
        ]
    }
}
