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
                return "MES POINTS"
            case .card:
                return "MA CARTE"
            case .profile:
                return "MON PROFIL"
            case .offers:
                return "NOS OFFRES"
            case .products:
                return "NOS PRODUITS"
            case .tips:
                return "ASTUCES MAKATY"
        }
    }
    
    var icon: String {
        switch self {
            case .point:
                return "house"
            case .card:
                return "iphone.homebutton.circle"
            case .profile:
                return "person"
            case .offers:
                return "cart"
            case .products:
                return "digitalcrown.arrow.counterclockwise"
            case .tips:
                return "pencil.tip.crop.circle"
        }
    }
}
