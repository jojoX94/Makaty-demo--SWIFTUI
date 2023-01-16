//
//  TipViewRow.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI
import Kingfisher

struct TipViewRow: View {
    let model: TipDataModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            KFImage.url(URL(string: model.imageUrl))
                .placeholder{Image("AstuceImg")}
                .loadDiskFileSynchronously()
                .cacheMemoryOnly()
                .fade(duration: 0.25)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 150, maxHeight: 116)
            VStack(alignment: .leading, spacing: 10) {
                Text(model.title)
                    .textSubtitleStyle2()
                    .foregroundColor(Color("Black"))
                LabelWithIcon(type: .shop, text: model.category.title)
            }
            .padding(.top, 8)
            .padding(.horizontal, 16)
        }
        .border(Color("LightGray"), width: 1)
    }
}

struct TipViewRow_Previews: PreviewProvider {
    static var previews: some View {
        TipViewRow(model: TipDataModel(imageUrl: "AstuceImg", title: "Lorem ipsum dolor sit amet consectetur.", description: "Lorem ipsum dolor sit amet consectetur.", category: .Mac))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
