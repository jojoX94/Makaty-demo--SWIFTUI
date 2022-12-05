//
//  ChipsDataModel.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct ChipsDataModel: Identifiable {
    let id = UUID()
    @State var isSelected: Bool
    let title: String
}
