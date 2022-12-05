//
//  ChipsContent.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct Chips: View {
    let title: String
    @State var isSelected: Bool
    
    var body: some View {
        Text(title)
            .font(.title3)
            .lineLimit(1)
            .padding(.all, 10)
            .foregroundColor(isSelected ? .white : .blue)
            .background(isSelected ? Color.blue : Color.white) //different UI for selected and not selected view
            .cornerRadius(40)  //rounded Corner
            .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.blue, lineWidth: 1.5)
            
            ).onTapGesture {
                isSelected.toggle() // toggle select - not selected
            }
        
    }
}

//struct Chips_Previews: PreviewProvider {
//    static var previews: some View {
//        Chips(title: "iPhone", isSelected: .constant(false))
//    }
//}
