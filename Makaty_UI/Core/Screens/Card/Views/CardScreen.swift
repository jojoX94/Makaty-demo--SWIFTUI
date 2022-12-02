//
//  CardScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct CardScreen: View {
    
    @EnvironmentObject var viewRouter : ViewRoutterViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                VStack(spacing: 10) {
                    Text("Numéro Makaty")
                        .font(.custom("HelveticaNeue-Light", size: 16))
                    Text("#415")
                        .font(.custom("HelveticaNeue-Regular", size: 40))
                }
                Spacer()
                
                NavigationLink {
                    PointScreen()
                } label: {
                    Text("VOIR MES POINTS")
                        .font(.custom("HelveticaNeue-Light", size: 41))
                        .foregroundColor(.gray)
                }


            }
            .toolbar {
                CustomToolBarContent(title: "MA CARTE") {
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
            .environmentObject(ViewRoutterViewModel())
    }
}
