//
//  PointScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct PointScreen: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 10) {
                    Text("MES POINTS")
                        .font(.custom("HelveticaNeue-Regular", size: 14))
                    HStack(alignment: .bottom) {
                        Text("1240")
                            .font(.custom("HelveticaNeue-Regular", size: 30))
                        Text("PTS")
                            .font(.custom("HelveticaNeue-Regular", size: 18))
                    }
                }
                
                VStack(alignment: .leading, spacing: 14) {
                    Text("HISTORIQUE DES POINTS")
                        .font(.custom("HelveticaNeue-Medium", size: 16))
                    
                    LazyVStack(spacing: 10) {
                        PointViewRow()
                        PointViewRow()
                        PointViewRow()
                        PointViewRow()
                    }
                    
                    VStack(alignment: .center) {
                        HStack {
                            Spacer()
                        }
                        Button {
                            
                        } label: {
                            Text("Voir l’historique complète")
                                .font(.custom("HelveticaNeue-Medium", size: 14))
                                .padding(.horizontal, 21)
                                .padding(.vertical, 16)
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.gray)
                                )
                    }
                    }

                    
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
            .padding(.top, 40)
            .padding(.bottom, 10)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("MAKATY")
                        .font(.custom("HelveticaNeue-Bold", size: 22))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "menucard")
                    }
                }
        }
        }
    }
}

struct PointScreen_Previews: PreviewProvider {
    static var previews: some View {
        PointScreen()
    }
}
