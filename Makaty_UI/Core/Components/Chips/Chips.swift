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
            .font(.custom("SFProText-Regular", size: 14))
            .lineLimit(1)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .foregroundColor(isSelected ? .white : Color("Gray"))
            .background(isSelected ? Color("Blue") : .white)
            .cornerRadius(30)
            .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(isSelected ? .clear : Color("Gray"), lineWidth: 1)
            
            ).onTapGesture {
                isSelected.toggle()
            }
        
    }
}

//struct Chips_Previews: PreviewProvider {
//    static var previews: some View {
//        Chips(title: "iPhone", isSelected: .constant(false))
//    }
//}
