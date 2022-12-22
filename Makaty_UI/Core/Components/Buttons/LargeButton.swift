//
//  LargeButton.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct LargeButton: View {
    let title: String
    let subTitle: String
    let backgroundImageName: String
    
    var body: some View {
        ZStack {
            
            Image(backgroundImageName)
                .renderingMode(.original)
                .resizable()
            
            HStack {
                Spacer()
                VStack {
                    Text(title)
                        .font(.custom("SFProText-Regular", size: 16))
                        .foregroundColor(.white)
                    Text(subTitle)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding(.trailing, 20)
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 143)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LargeButton(title: "Voir le catalogue", subTitle: "produits", backgroundImageName: "CatalogueImg_clean")
            LargeButton(title: "Voir les offres", subTitle: "MAKATY", backgroundImageName: "OffersImg_clean")
            
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
