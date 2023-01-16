//
//  UserNotActivedScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct UserNotActivedScreen: View {
    
    @EnvironmentObject var viewRouter : RouterViewModel
    
    @State var receiveNotif: Bool = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(spacing: 32) {
                    Image("NoprofilImg")
                    VStack(spacing: 16) {
                        Text("Compte visiteur")
                            .textSubtitleStyle()
                        Text("Morbi euismod nec dolor elementum quis. Integer sit donec eget sed nam nullam. Diam ac turpis diam tempus blandit mi.")
                            .textBody()
                            .foregroundColor(Color("Gray"))
                            .multilineTextAlignment(.center)
                    }
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                Link(destination: URL(string: "http://www.makaty.mg/")!) {
                    LargeButton(title: "Visitez le site", subTitle: "makaty.mg", backgroundImageName: "PointsImg_clean")
                }
                .padding(.horizontal, 16)
                
                
                
                
            }
            .padding(.top, 40)
            .padding(.bottom, 20)
            .background(Color.white)
            .toolbar {
                CustomToolBarContent(titleType: .text, title: "Mon profil") {
                    withAnimation {
                        viewRouter.showMenu = true
                    }
                }
            }
            
        }
        
    }
}

struct UserNotActivedScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserNotActivedScreen()
            .environmentObject(RouterViewModel())
    }
}
