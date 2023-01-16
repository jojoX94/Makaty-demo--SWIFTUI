//
//  PointFilterViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import Foundation

enum PointFilterViewModel: Int, CaseIterable {
    case all
    case win
    case consume
    
    var title: String {
        switch self {
            case .all: return "Tout"
            case .win: return "Gagnés"
            case .consume: return "Consommés"
        }
    }
}
