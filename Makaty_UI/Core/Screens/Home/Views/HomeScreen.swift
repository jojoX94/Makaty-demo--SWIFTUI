//
//  HomeScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var pointViewModel = PointViewModel()
    @EnvironmentObject var viewRouter : RouterViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    VStack(spacing: 0) {
                        Text("Mes points de fidélité")
                            .font(.custom("SFProText-Bold", size: 18))
                            .foregroundColor(Color("Gray"))
                            .padding(.bottom, 14)
                        HStack(alignment: .center, spacing: 8) {
                            Text("1240")
                                .font(.custom("SFProText-Bold", size: 56))
                            Text("PTS")
                                .textBody()
                        }
                        .padding(.bottom, 10)
                        Text("1 POINT = 100 AR")
                            .font(.custom("SFProText-Regular", size: 14))
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Historique des points")
                            .textSubtitleStyle()
                            .foregroundColor(Color("Blue"))
                        
                        LazyVStack(spacing: 8) {
                            ForEach(pointViewModel.pointOders.prefix(3) ) { item in
                                NavigationLink(destination: {
                                    DetailHistoryView()
                                }, label: {
                                    CustomPointViewRow(model: OrderDataModel(title: "Facture N°00123", type: .win, totalPoints: 399, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
                                })
                            }
                        }
                            
                        NavigationLink {
                            HistoryScreen()
                                .environmentObject(pointViewModel)
                        } label: {
                            Text("Historique complète")
                                .textwithButtonStyle()
                        }
                        .frame(maxWidth: .infinity)


                        
                        HStack{
                            Spacer()
                        }
                    }
                    
                    
                    VStack(spacing: 10) {
                        LargeButton(title: "Voir le catalogue", subTitle: "produits", backgroundImageName: "CatalogueImg_clean")
                        NavigationLink {
                            OfferScreen()
                        } label: {
                            LargeButton(title: "Voir les offres", subTitle: "MAKATY", backgroundImageName: "OffersImg_clean")
                        }

                    }
                }
                .navigationBarBackButtonHidden(true)
                .padding()
                .toolbar {
                    CustomToolBarContent(titleType: .image) {
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

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(RouterViewModel())
    }
}
