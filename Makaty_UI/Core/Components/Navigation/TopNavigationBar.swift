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
                .font(.title)
                .onTapGesture {
                    backAction()
                }
            Text(screenTitle)
                .font(.custom("SFProText-Bold", size: 22))
                .foregroundColor(Color("Black"))
            Spacer()
        }
    }
}

struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar(screenTitle: "Historique des points") {}
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
