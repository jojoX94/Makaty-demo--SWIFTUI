//
//  TipFilterViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import Foundation

enum TipFilterViewModel: Int, CaseIterable {
    case all
    case iPad
    case iPhone
    case Mac
    case Watch
    
    var title: String {
        switch self {
            case .all: return "Tout"
            case .iPad: return "iPad"
            case .iPhone: return "iPhone"
            case .Mac: return "Watch"
            case .Watch: return "Watch"
        }
    }
}
