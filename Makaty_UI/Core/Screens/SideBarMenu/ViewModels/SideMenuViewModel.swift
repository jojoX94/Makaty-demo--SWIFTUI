//
//  SidebarMenuViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import Foundation

enum Page: Int, CaseIterable {
    case point
    case card
    case profile
    case offers
    case products
    case tips
    
    var title: String {
        switch self {
            case .point:
                return "Mes points de fidélité"
            case .card:
                return "Ma carte"
            case .profile:
                return "Mon profil"
            case .offers:
                return "Nos offres"
            case .products:
                return "Nos produits"
            case .tips:
                return "Nos conseils de Pro"
        }
    }
    
    var icon: String {
        switch self {
            case .point:
                return "StarColorIcon"
            case .card:
                return "CardColorIcon"
            case .profile:
                return "ProfilColorIcon"
            case .offers:
                return "OfferColorIcon"
            case .products:
                return "ShopColorIcon"
            case .tips:
                return "TipColorIcon"
        }
    }
}
