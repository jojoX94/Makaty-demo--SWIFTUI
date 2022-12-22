//
//  LinkLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct LinkLabel: View {
    let icon: String
    let title: String
    
    var body: some View {
        Label {
            Text(title)
                .font(.custom("SFProText-Bold", size: 14))
        } icon: {
            Image(systemName: icon)
                .font(.title2)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)

    }
}

struct LinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        LinkLabel(icon: "house", title: "Home")
    }
}
