//
//  LabelView.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct LabelView: View {
    let label: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            VStack(alignment: .leading, spacing: 2) {
                Text(label)
                    .font(.custom("SFProText-Bold", size: 14))
                    .foregroundColor(Color("Black"))
                Text(value)
                    .font(.custom("SFProText-Regular", size: 16))
                    .foregroundColor(Color("Gray"))
            }
            .padding(.horizontal, 16)
            
            Divider()
                .padding(.vertical, 13)
        }
        .frame(maxWidth: .infinity)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(label: "Nom", value: "Rakoto")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
