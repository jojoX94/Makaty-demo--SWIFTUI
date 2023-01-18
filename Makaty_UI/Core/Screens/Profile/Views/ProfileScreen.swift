//
//  ProfileScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @EnvironmentObject var viewRouter : RouterViewModel
    @EnvironmentObject var authViewModel : AuthViewModel
    
    @State var isNotificationAllowed: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    formSection

                    notificationSection
                    
                    linToWebsite
                    
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
            .onAppear{
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    switch settings.authorizationStatus {
                    case .authorized:
                        isNotificationAllowed = true
                    case .denied, .notDetermined, .provisional:
                        isNotificationAllowed = false
                    default:
                        isNotificationAllowed = false
                    }
                }
            }
            .refreshable {
                
            }
        }
    }
}

extension ProfileScreen {
    
    private var formSection: some View {
        VStack(alignment: .leading, spacing: 28) {
            Text("Informations personnelles")
                .textSubtitleStyle()
                .foregroundColor(Color("Blue"))
                .padding(.horizontal, 16)
            

            VStack(spacing: 0) {
                VStack(spacing: 0) {
                    TextFieldDisabled(label: "Nom", value: authViewModel.user!.name)
                    TextFieldDisabled(label: "Prénom", value: authViewModel.user!.firstName)
                    TextFieldDisabled(label: "Téléphone", value: "$username")
                    TextFieldDisabled(label: "Email", value: authViewModel.user!.email)
                    TextFieldDisabled(label: "Adresse", value: "$address")
                    TextFieldDisabled(label: "Préférence de consommation", value: authViewModel.user!.preferencesProducts)
                    TextFieldDisabled(label: "Date d’adhésion", value: authViewModel.user!.preferencesProducts)
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
    }
    
    private var notificationSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Notifications")
                .textSubtitleStyle()
                .foregroundColor(Color("Blue"))
            CustomSwitch(label: "Recevoir des notifications pour les nouvelles offres, pour la fin d’une offre  et pour les MAJ de mon solde", value: $isNotificationAllowed)
        .onChange(of: isNotificationAllowed) { value in
            if value {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                    if granted {
                        print("Notification permission granted.")
                    } else {
                        print("Notification permission denied.")
                    }
                }
            }
        }
        }
        .padding(.horizontal, 16)
    }
    
    private var linToWebsite: some View {
        Link(destination: URL(string: "http://www.makaty.mg/")!) {
            LargeButton(title: "Visitez le site", subTitle: "makaty.mg", backgroundImageName: "PointsImg_clean")
        }
        .padding(.horizontal, 16)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
            .environmentObject(RouterViewModel())
            .environmentObject(AuthViewModel())
    }
}
