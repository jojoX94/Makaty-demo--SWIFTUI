//
//  CustomToolBar.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct CustomToolBarContent: ToolbarContent {
    let title: String
    let action: () -> Void

    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Text("MAKATY")
                .font(.custom("SFProText-Bold", size: 22))
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            HStack {
                Image(systemName: "menucard")
                    .onTapGesture {
                        withAnimation {
                            action()
                        }
                    }
            }
        }
    }
}
