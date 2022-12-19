//
//  DetailHistoryView.swift
//  Makaty_UI
//
//  Created by Madiapps on 19/12/2022.
//

import SwiftUI

struct DetailHistoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            TopNavigationBar(screenTitle: "TICKET N 002133") {
                presentationMode.wrappedValue.dismiss()
            }
            
            VStack(spacing: 45) {
                SectionView(title: "Description", iconName: "tablecells.badge.ellipsis") {
                    HLabel(label: "iPhone 13 pro max (x1)", value: "3 000 000 Ar")
                    HLabel(label: "Diagnostic macbook", value: "100 000 Ar")
                    HLabel(label: "Airpods (x1)", value: "150 000 Ar")
                } totalView: {
                    HLabel(label: "Total", value: "3 250 000 Ar", size: .medium)
                }

                SectionView(title: "Paiement", iconName: "wallet.pass") {
                    HLabel(label: "Espèce", value: "3 000 000 Ar")
                    HLabel(label: "Points de fidélité", value: "250 000 Ar (250 Pts)")
                } totalView: {}
                
                SectionView(title: "Points de fidélité", iconName: "tablecells.badge.ellipsis") {
                    HLabel(label: "Points consommés", value: "3 000 000 Ar")
                    HLabel(label: "Points gagnés", value: "- 250 Pts")
                    HLabel(label: "Airpods (x1)", value: "+ 500 Pts")
                } totalView: {
                    HLabel(label: "Total de points", value: "+ 250 Pts", size: .medium)
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct DetailHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHistoryView()
    }
}
