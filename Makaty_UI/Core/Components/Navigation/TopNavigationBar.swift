//
//  TopNavigationBar.swift
//  Makaty_UI
//
//  Created by Madiapps on 19/12/2022.
//

import SwiftUI

struct TopNavigationBar: View {
    let screenTitle: String
    let backAction: () -> Void
    
    var body: some View {
        HStack(spacing: 18) {
            Image(systemName: "chevron.backward")
                .onTapGesture {
                    backAction()
                }
            Text(screenTitle)
                .font(.custom("HelveticaNeue-Regular", size: 14))
            Spacer()
        }
        .padding(.bottom, 30)
    }
}

struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar(screenTitle: "HISTORIQUE DES POINTS") {}
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
