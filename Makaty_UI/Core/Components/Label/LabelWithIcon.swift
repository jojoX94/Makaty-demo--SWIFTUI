//
//  LabelWithIcon.swift
//  Makaty_UI
//
//  Created by Madiapps on 27/12/2022.
//

import SwiftUI

struct LabelWithIcon: View {
    let label: String
    let iconName: String
    
    var body: some View {
        Label {
            Text(label)
                .font(.custom("SFProText-Regular", size: 14))
                .foregroundColor(Color("Gray"))
        } icon: {
            Image(iconName)
        }
    }
}

struct LabelWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        LabelWithIcon(label: "iPhone", iconName: "ShopIcon")
    }
}
