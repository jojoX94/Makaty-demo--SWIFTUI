//
//  CustomLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct CustomLabel: View {
    
    let icon: String
    let title: String
    let value: String
    
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .font(.title2)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.custom("HelveticaNeue-Medium", size: 14))
                Text(value)
                    .font(.custom("HelveticaNeue-Medium", size: 14))

            }
            .foregroundColor(.gray)
        }
    }
}

struct CustomLabel_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabel(icon: "flag.2.crossed", title: "Date", value: "01/12/2022")
    }
}
