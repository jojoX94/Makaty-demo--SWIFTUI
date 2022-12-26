//
//  CustomToolBar.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

enum customToolBarTitleType {
    case text, image
}

struct CustomToolBarContent: ToolbarContent {
    let titleType: customToolBarTitleType
    let title: String
    let image: String
    let action: () -> Void
    
    init(titleType: customToolBarTitleType, title: String = "", image: String = "", action: @escaping () -> Void) {
        self.titleType = titleType
        self.title = title
        self.image = image
        self.action = action
    }

    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            if titleType == .text {
                Text(title)
                    .textSubtitleStyle()
            } else {
                Image("LogoMin")
                    .renderingMode(.original)
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            HStack {
                Image("MenuIcon")
                    .onTapGesture {
                        withAnimation {
                            action()
                        }
                    }
            }
        }
    }
}
