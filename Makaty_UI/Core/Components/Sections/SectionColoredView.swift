//
//  SectionColoredView.swift
//  Makaty_UI
//
//  Created by Madiapps on 22/12/2022.
//

import SwiftUI

struct SectionColoredView<Content, AnotherContent> : View where Content : View, AnotherContent: View {
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
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                Image(iconName)
                Text(title.capitalized)
                    .font(.custom("SFProText-Bold", size: 22))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color("Blue"))
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .foregroundColor(Color("White"))
            
            VStack(spacing: 18) {
                contentView()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color("Blue"))
            
            if AnotherContent.self != EmptyView.self {
                totalView()
                    .padding()
                    .background(Color("Black"))
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct SectionColoredView_Previews: PreviewProvider {
    static var previews: some View {
        SectionColoredView(title: "Points de fidélité", iconName: "StarIcon") {
            HLabel(label: "Points consommés", value: "-2500 PTS", labelColor: "White")
            HLabel(label: "Points gagnés", value: "- 250 Pts", labelColor: "White")
        } totalView: {
            HLabel(label: "Total de points", value: "+ 250 Pts",  labelColor: "White", size: .medium)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
