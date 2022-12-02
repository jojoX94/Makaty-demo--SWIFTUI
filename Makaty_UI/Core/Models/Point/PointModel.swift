//
//  PointModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import Foundation

enum PointType {
    case win, consume
}

struct PointModel: Identifiable {
    let id: String
    let title: String
    let type: PointType
    let totalPoints: Int
    let details: String
    let activeDate: String
    let expireDate: String
    let purchaseDate: String?
    
    init(title: String, type: PointType, totalPoints: Int, details: String, activeDate: String, expireDate: String, purchaseDate: String?) {
        self.id = UUID().uuidString
        self.title = title
        self.type = type
        self.totalPoints = totalPoints
        self.details = details
        self.activeDate = activeDate
        self.expireDate = expireDate
        self.purchaseDate = purchaseDate
    }
    
    init(id: String, title: String, type: PointType, totalPoints: Int, details: String, activeDate: String, expireDate: String, purchaseDate: String?) {
        self.id = id
        self.title = title
        self.type = type
        self.totalPoints = totalPoints
        self.details = details
        self.activeDate = activeDate
        self.expireDate = expireDate
        self.purchaseDate = purchaseDate
    }
    
    init(id: String, title: String, type: PointType, totalPoints: Int, details: String, activeDate: String, expireDate: String) {
        self.id = id
        self.title = title
        self.type = type
        self.totalPoints = totalPoints
        self.details = details
        self.activeDate = activeDate
        self.expireDate = expireDate
        self.purchaseDate = nil
    }
}
