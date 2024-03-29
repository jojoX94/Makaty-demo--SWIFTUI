//
//  RouterViewModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import Foundation

class RouterViewModel: ObservableObject {
    @Published var currentPage: Page = .point
    @Published var showMenu = false
}
