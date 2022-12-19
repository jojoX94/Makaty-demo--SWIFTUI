//
//  EditProfileScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct EditProfileScreen: View {
    
    @State var name: String = ""
    @State var username: String = ""
    @State var civility: String = ""
    @State var address: String = ""
    @State var email: String = ""
    @State var preference: String = ""
    @State var date: Date = Date()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var listChips: [ChipsDataModel] = [
        ChipsDataModel(isSelected: true, title: "iPhone"),
        ChipsDataModel(isSelected: false, title: "iPad"),
        ChipsDataModel(isSelected: true, title: "MacBook"),
        ChipsDataModel(isSelected: false, title: "apple Watch"),
    ]
    
    var body: some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
        
        VStack {
            TopNavigationBar(screenTitle: "EDITER VOTRE PROFILS") {
                presentationMode.wrappedValue.dismiss()
            }
            
            TextFormField(label: "Nom", value: $name)
            TextFormField(label: "PRENOM", value: $username)
            TextFormField(label: "CIVILITE", value: $civility)
            TextFormField(label: "ADRESSE", value: $address)
            TextFormField(label: "EMAIL", value: $email)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Preferences")
                    .font(.custom("HelveticaNeue-Light", size: 12))
                    .foregroundColor(.black.opacity(0.8))
                
                GeometryReader { geo in
                    ZStack(alignment: .topLeading, content: {
                    ForEach(listChips) { chipsData in
                        Chips(title: chipsData.title,
                              isSelected: chipsData.isSelected)
                            .padding(.all, 5)
                            .alignmentGuide(.leading) { dimension in
                                if (abs(width - dimension.width) > geo.size.width) {
                                    width = 0
                                    height -= dimension.height
                                }
                                
                                let result = width
                                if chipsData.id == listChips.last!.id {
                                    width = 0
                                } else {
                                    width -= dimension.width
                                }
                                return result
                              }
                            .alignmentGuide(.top) { dimension in
                                let result = height
                                if chipsData.id == listChips.last!.id {
                                    height = 0
                                }
                                return result
                            }
                        }
                    })
                }
            }
            
            
            
            
            Button {
                
            } label: {
                Text("Enregistrer modifications")
                    .textwithButtonStyle()
            }
            
            Spacer()
        }
        .padding(.top, 30)
        .padding(.horizontal, 16)
            
    }
}

struct EditProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileScreen()
    }
}
