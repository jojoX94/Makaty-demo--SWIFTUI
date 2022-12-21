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
            VStack(alignment: .leading, spacing: 0) {
                Text("INFORMATIONS PERSONNELLES")
                    .textSubtitleStyle()
                    .padding(.bottom, 16)
                

                VStack() {
                    LabelView(label: "Nom", value: "$name")
                    LabelView(label: "Prénom", value: "$username")
                    LabelView(label: "Civilité", value: "$civility")
                    LabelView(label: "Adresse", value: "$address")
                    LabelView(label: "Email", value: "$email")
                    LabelView(label: "Préférence de consommation", value: "$preference")
                    LabelView(label: "Date d’adhésion", value: "11/12/2022")
                }
                .padding(.bottom, 26)
                
                VStack {
                    HStack {
                        Spacer()
                    }
                    NavigationLink(destination: EditProfileScreen()) {
                        Text("Modifer profil")
                            .textwithButtonStyle()
                    }
                }
                .padding(.bottom, 36)

                VStack(alignment: .leading, spacing: 10) {
                    Text("NOTIFICATIONS")
                        .textSubtitleStyle()
                    CustomSwitch(label: "Recevoir des notifications pour les nouvelles offres, pour la fin d’une offre  et pour les MAJ de mon solde", value: $receiveNotif)
                }
                
                Link("Link Text", destination: URL(string: "https://www.apple.com/")!)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .padding(.top, 30)

                
                
                
                Spacer()
                }
                .padding(.horizontal, 15)
                .padding(.top, 32)
                .background(Color.white)
                .toolbar {
                    CustomToolBarContent(titleType: .text, title: "MON PROFIL") {
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

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
            .environmentObject(ViewRoutterViewModel())
    }
}
