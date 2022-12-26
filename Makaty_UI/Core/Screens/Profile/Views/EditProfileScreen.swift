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
    @State var phoneNumber: String = ""
    @State var address: String = ""
    @State var email: String = ""
    @State var preference: String = ""
    @State var date: Date = Date()
    
    @State private var totalHeight = CGFloat(100)
    
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
        
        VStack(spacing: 30) {
            TopNavigationBar(screenTitle: "Edition profil") {
                presentationMode.wrappedValue.dismiss()
            }
            
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    TextFormField(label: "Nom", value: $name)
                    TextFormField(label: "Prénom", value: $username)
                    TextFormField(label: "Téléphone", value: $phoneNumber)
                    TextFormField(label: "Email", value: $address)
                    TextFormField(label: "Adresse", value: $email)
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Préférence en produit Apple")
                            .textSubtitleStyle2()
                            .foregroundColor(Color("Black"))
                        
                        VStack(spacing: 0) {
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
                                .background(GeometryReader {gp -> Color in
                                    DispatchQueue.main.async {
                                        self.totalHeight = gp.size.height
                                    }
                                    return Color.clear
                                })
                            }
                        }
                        .frame(height: totalHeight)
                    }
                }

                
                Button {
                    
                } label: {
                    Text("Enregistrer modifications")
                        .textwithButtonStyle()
                }
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .navigationBarBackButtonHidden(true)
            
    }
}

struct EditProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileScreen()
    }
}
