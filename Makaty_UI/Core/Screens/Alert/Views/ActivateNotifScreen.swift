//
//  ActivateNotifScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 03/01/2023.
//

import SwiftUI

struct ActivateNotifScreen: View {
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 48) {
                VStack(spacing: 32) {
                    Image("NotifIcon")
                    VStack(spacing: 16) {
                        Text("Activation des notifications")
                            .textSubtitleStyle()
                            .foregroundColor(Color("Blue"))
                        Text("Les notifications vous permettent de rester au courant des promotions, des soldes ou encore des offres exclusives. Lorem ipsum dolor sit amet consectetur. Tellus morbi ipsum nisl cras est hendrerit lacus.")
                            .textBody()
                            .lineSpacing(1.375)
                            .foregroundColor(Color("Gray"))
                    }
                    .multilineTextAlignment(.center)
                    
                }
                VStack(spacing: 16) {
                    NavigationLink {
                        PointScreen()
                    } label: {
                        FixedButton(style: .filled, label: "Activer les notifications")
                    }

                    NavigationLink {
                        PointScreen()
                    } label: {
                        FixedButton(style: .outlined, label: "Plus tard")
                    }

                }
            }
            .padding(.horizontal, 32)
        }
    }
}

struct ActivateNotifScreen_Previews: PreviewProvider {
    static var previews: some View {
        ActivateNotifScreen()
    }
}
