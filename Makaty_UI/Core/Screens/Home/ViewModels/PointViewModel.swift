//
//  PointViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import Foundation
import SwiftUI

class PointViewModel: ObservableObject {
    @Published var pointOders = [OrderDataModel]()
    
    init() {
        pointOders = [
            OrderDataModel(title: "", type: .consume, totalPoints: 100, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .win, totalPoints: 2, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .win, totalPoints: 45, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .consume, totalPoints: 23, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .consume, totalPoints: 23, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .win, totalPoints: 103240, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
            OrderDataModel(title: "", type: .consume, totalPoints: 23, details: "", activeDate: "", expireDate: "", purchaseDate: ""),
        ]
    }
}
