//
//  CustomDatePicker.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct CustomDatePicker: View {
    let label: String
    @Binding var value: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Spacer()
            }
            Text(label)
                .font(.custom("HelveticaNeue-Medium", size: 14))
                .foregroundColor(.black.opacity(0.8))
            DatePicker("", selection: $value, displayedComponents: .date)
                .datePickerStyle(.compact)
                .labelsHidden()
                .fixedSize()
//                .frame(width: 200, height: 50)
        }
    }
}

struct CustomDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomDatePicker(label: "Date d’adhésion", value: .constant(Date()))
    }
}
