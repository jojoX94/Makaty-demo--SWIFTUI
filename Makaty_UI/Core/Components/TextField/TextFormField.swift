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
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .font(.custom("HelveticaNeue-Light", size: 12))
                .foregroundColor(.black.opacity(0.8))
            TextField("", text: $value)
                .font(.custom("HelveticaNeue-Regular", size: 14))
                .foregroundColor(.black.opacity(0.7))
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
}

struct TextFormField_Previews: PreviewProvider {
    static var previews: some View {
        TextFormField(label: "Nom", value: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
