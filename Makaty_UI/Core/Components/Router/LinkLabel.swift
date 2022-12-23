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
                .font(.custom("SFProText-Regular", size: 18))
                .foregroundColor(Color("Gray"))
                .padding(.leading, 18)
        } icon: {
            Image(icon)
                .frame(width: 27, height: 27)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)

    }
}

struct LinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        LinkLabel(icon: "StarColorIcon", title: "Home")
            .padding()
            .previewLayout(.sizeThatFits)
            
    }
}
