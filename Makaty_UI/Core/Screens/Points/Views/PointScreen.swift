//
//  PointScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct PointScreen: View {
    
    @StateObject var pointViewModel = PointViewModel()
    @EnvironmentObject var viewRouter : ViewRoutterViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 10) {
                    Text("MES POINTS")
                        .font(.custom("SFProText-Regular", size: 14))
                    HStack(alignment: .bottom) {
                        Text("1240")
                            .font(.custom("SFProText-Regular", size: 30))
                        Text("PTS")
                            .font(.custom("SFProText-Regular", size: 18))
                    }
                }
                
                VStack(alignment: .leading, spacing: 14) {
                    Text("HISTORIQUE DES POINTS")
                        .font(.custom("SFProText-Medium", size: 16))
                    
                    LazyVStack(spacing: 10) {
                        ForEach(pointViewModel.pointOders.prefix(3) ) { item in
                            NavigationLink(destination: {
                                DetailHistoryView()
                            }, label: {
                                CustomPointViewRow(model: PointModel(title: "Ticket N°00123", type: .win, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
                            })
                        }
                    }
                    
                        
                    NavigationLink {
                        HistoryScreen()
                            .environmentObject(pointViewModel)
                    } label: {
                        Text("Voir l’historique complète")
                            .textwithButtonStyle()
                    }
                    .frame(maxWidth: .infinity)


                    
                    HStack{
                        Spacer()
                    }
                }
                .padding()
                
                
                
                
               Spacer()
                
                HStack(spacing: 10) {
                    LargeButton(label: "Voir le catalogue produits")
                    LargeButton(label: "Voir le offres MAKATY")
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding(.top, 40)
            .padding(.bottom, 10)
            .toolbar {
                CustomToolBarContent(title: "MAKATY") {
                    withAnimation {
                        viewRouter.showMenu = true
                    }
                }
            }
        }
    }
}

struct PointScreen_Previews: PreviewProvider {
    static var previews: some View {
        PointScreen()
            .environmentObject(ViewRoutterViewModel())
    }
}
