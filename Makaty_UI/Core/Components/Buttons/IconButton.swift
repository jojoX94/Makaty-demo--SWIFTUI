//
//  IconButton.swift
//  Makaty_UI
//
//  Created by Madiapps on 23/12/2022.
//

import SwiftUI

struct IconButton: View {
    let iconName: String
    
    var body: some View {
        Image(iconName)
            .padding(.vertical, 14)
            .padding(.horizontal, 16)
            .overlay(Circle().stroke(Color("Gray"),lineWidth:1))
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(iconName: "FacebookIcon")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
