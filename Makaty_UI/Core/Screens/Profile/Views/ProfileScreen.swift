//
//  ProfileScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @EnvironmentObject var viewRouter : ViewRoutterViewModel
    
    @State var receiveNotif: Bool = true
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 28) {
                        Text("Informations personnelles")
                            .textSubtitleStyle()
                            .foregroundColor(Color("Blue"))
                            .padding(.horizontal, 16)
                        

                        VStack(spacing: 0) {
                            VStack(spacing: 0) {
                                LabelView(label: "Nom", value: "$name")
                                LabelView(label: "Prénom", value: "$username")
                                LabelView(label: "Téléphone", value: "$username")
                                LabelView(label: "Email", value: "$email")
                                LabelView(label: "Adresse", value: "$address")
                                LabelView(label: "Préférence de consommation", value: "$preference")
                                LabelView(label: "Date d’adhésion", value: "11/12/2022")
                            }
                            
                            VStack(spacing: 0) {
                                HStack {
                                    Spacer()
                                }
                                NavigationLink(destination: EditProfileScreen()) {
                                    Text("Modifer profil")
                                        .textwithButtonStyle()
                                }
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 16) {
                        Text("Notifications")
                            .textSubtitleStyle()
                            .foregroundColor(Color("Blue"))
                        CustomSwitch(label: "Recevoir des notifications pour les nouvelles offres, pour la fin d’une offre  et pour les MAJ de mon solde", value: $receiveNotif)
                    }
                    .padding(.horizontal, 16)
                    
                    Link(destination: URL(string: "http://www.makaty.mg/")!) {
                        LargeButton(title: "Visitez le site", subTitle: "makaty.mg", backgroundImageName: "PointsImg_clean")
                    }
                    .padding(.horizontal, 16)

                    
                    
                    
                    Spacer()
                    }
                    .padding(.top, 16)
                    .background(Color.white)
                    .toolbar {
                        CustomToolBarContent(titleType: .text, title: "Mon profil") {
                            withAnimation {
                                viewRouter.showMenu = true
                            }
                        }
                    }
                    .onTapGesture {
                      self.hideKeyboard()
                }
            }
            
        }
    }

    
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
            .environmentObject(ViewRoutterViewModel())
    }
}
