//
//  TextFormField.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct TextFormField: View {
    let label: String
//    let placeholder: String
    @Binding var value: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .font(.custom("SFProText-Bold", size: 16))
                .foregroundColor(Color("Black"))
            TextField("", text: $value)
                .font(.custom("SFProText-Regular", size: 16))
                .foregroundColor(Color(hex: "#272F3C"))
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color("LightGray"), lineWidth: 1)
                )
        }
    }
}

struct TextFormField_Previews: PreviewProvider {
    static var previews: some View {
        TextFormField(label: "Nom", value: .constant("Rakotomalala"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
