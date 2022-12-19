//
//  CustomSwitch.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct CustomSwitch: View {
    let label: String
    @Binding var value: Bool
    
    var body: some View {
        Toggle(isOn: $value) {
            Text("Recevoir des notifications pour les nouvelles offres, pour la fin d’une offre  et pour les MAJ de mon solde")
                .font(.custom("HelveticaNeue-Light", size: 14))
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct CustomSwitch_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwitch(label: "Recevoir des notifications pour les nouvelles offres, pour la fin d’une offre  et pour les MAJ de mon solde", value: .constant(true))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
