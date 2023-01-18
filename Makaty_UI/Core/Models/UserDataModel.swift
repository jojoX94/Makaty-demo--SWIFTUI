//
//  UserDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 18/01/2023.
//

import Foundation

struct UserDataModel {
    var id = UUID()
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
}
