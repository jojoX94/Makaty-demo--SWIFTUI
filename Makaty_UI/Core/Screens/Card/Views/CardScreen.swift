//
//  CardScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct CardScreen: View {
    
    @EnvironmentObject var viewRouter : RouterViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color("Blue"))
                    
                    VStack {
                        Image("LogoWhiteMin")
                            .padding(.top, 20)
                        Spacer()
                    }
                    
                    VStack(spacing: 16) {
                        Text("Numéro de carte")
                            .font(.custom("SFProText-Bold", size: 18))
                        Text("215")
                            .font(.custom("SFProText-Bold", size: 64))
                    }
                    .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity)
                
                NavigationLink {
                    HomeScreen()
                } label: {
                    NavigationLink {
                        HomeScreen()
                    } label: {
                        LargeButton(title: "Voir", subTitle: "mes points", backgroundImageName: "PointsImg_clean")
                    }

                }


            }
            .padding(.top, 32)
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
            .toolbar {
                CustomToolBarContent(titleType: .text, title: "Ma carte") {
                    withAnimation {
                        viewRouter.showMenu = true
                    }
                }
            }
        }
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
            .environmentObject(RouterViewModel())
    }
}
