//
//  UserResponse.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import Foundation

struct UserRes: Codable {
    var name: String
    var firstName: String
    var email: String
    var password: String
    var activationPush: Int
    var uuid: String
    var pointBeginning: Int
    var contactPhone: Int
    var preferencesProducts: String
    var subscriptionDate: String
    var userByApiToken: [CardRes]
//    var offers: [String]
    var userIdentifier: String
//    var roles: [String]
    var activateCount: Int
    var verified: Bool
    
}

struct CardRes: Codable {
    var cardNumber: String
}
