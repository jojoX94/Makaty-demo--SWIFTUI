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
        VStack(alignment: .leading){
            Text(label)
                .font(.custom("SFProText-Medium", size: 14))
                .foregroundColor(.black.opacity(0.8))
                .padding(.bottom, 4)
            Text(value)
                .font(.custom("SFProText-Regular", size: 14))
                .foregroundColor(.black.opacity(0.7))
            
            Divider()
                .padding(.vertical, 4)
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
