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
        VStack(spacing: 14) {
            HStack(spacing: 15) {
                Image(systemName: iconName)
                Text(title.capitalized)
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                Spacer()
            }
            .padding(.leading, 5)
            
            Divider()
            
            VStack(spacing: 18) {
                contentView()
            }
            
            if AnotherContent.self != EmptyView.self {
                Divider()
                    .foregroundColor(.black)
                totalView()
            }
            
            
        }
    }
}

//struct SectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionView()
//    }
//}
