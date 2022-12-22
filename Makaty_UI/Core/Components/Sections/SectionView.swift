//
//  SectionView.swift
//  Makaty_UI
//
//  Created by Madiapps on 19/12/2022.
//

import SwiftUI

struct SectionView<Content, AnotherContent> : View where Content : View, AnotherContent: View {
    let title: String
    let iconName: String
    let contentView: () -> Content
    let totalView: () -> AnotherContent?
    
    init(title: String, iconName: String, @ViewBuilder contentView: @escaping () -> Content, @ViewBuilder totalView: @escaping () -> AnotherContent? = { nil } ) {
      self.title = title
      self.iconName = iconName
      self.contentView = contentView
      self.totalView = totalView
    }

    var body: some View {
        VStack(spacing: 12) {
            
            HStack(spacing: 10) {
                Image(iconName)
                Text(title.capitalized)
                    .font(.custom("SFProText-Bold", size: 22))
                    .foregroundColor(Color("Blue"))
                Spacer()
            }
            .padding(.horizontal, 16)
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .foregroundColor(Color("LightGray"))
            
            VStack(spacing: 8) {
                contentView()
                    .padding(.horizontal, 16)
            }
            
            if AnotherContent.self != EmptyView.self {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundColor(Color("LightGray"))
                totalView()
                    .padding(.horizontal, 16)
            }
            
            
        }
        .padding(.vertical, 12)
        .border(Color("LightGray"), width: 1)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 32) {
            SectionView(title: "Description", iconName: "ShopColorIcon") {
                HLabel(label: "iPhone 13 pro max (x1)", value: "3 000 000 Ar")
                HLabel(label: "Diagnostic macbook", value: "100 000 Ar")
                HLabel(label: "Airpods (x1)", value: "150 000 Ar")
            } totalView: {
                HLabel(label: "Total", value: "3 250 000 Ar", labelColor: "Black", size: .medium)
            }
            
            SectionView(title: "Paiement", iconName: "WalletColorIcon") {
                HLabel(label: "Espèce", value: "3 000 000 Ar")
                HLabel(label: "Points de fidélité", value: "250 000 Ar (250 Pts)")
            } totalView: {}
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
