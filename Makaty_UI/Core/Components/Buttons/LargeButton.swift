//
//  LargeButton.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct LargeButton: View {
    let label: String
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 90, height: 90)
                .foregroundColor(.gray)
            Text(label.uppercased())
                .font(.custom("SFProText-Regular", size: 14))
                .multilineTextAlignment(.center)
        }
        .frame(width: 172, height: 154)
        .background(Color.gray.opacity(0.3).ignoresSafeArea([]))
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            LargeButton(label: "Voir le offres makaty") // "Voir le catalogue produits"
        }
    }
}
