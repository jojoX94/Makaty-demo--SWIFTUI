//
//  OfferScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct OfferScreen: View {
    @StateObject var offerVM = OfferViewModel()
    
    @EnvironmentObject var viewRouter : ViewRoutterViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    LazyVStack {
                        ForEach(offerVM.offers) { offer in
                            OfferView(model: offer)
                        }
                    }
                    Spacer()
                    
                }
                .padding(.top, 29)
                .padding(.horizontal, 16)
                .toolbar {
                    CustomToolBarContent(titleType: .text, title: "Nos offres") {
                        withAnimation {
                            viewRouter.showMenu = true
                        }
                    }
                }
            }
            .refreshable {
                
            }
        }
    }
}

struct OfferScreen_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreen()
            .environmentObject(ViewRoutterViewModel())
    }
}
