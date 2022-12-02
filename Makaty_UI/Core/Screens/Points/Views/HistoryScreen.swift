//
//  HistoryScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct HistoryScreen: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var selectedFilter: PointFilterViewModel = .all
    @EnvironmentObject var pointViewModel : PointViewModel
    
    var filteredPointOrder: [PointModel] {
        switch selectedFilter {
        case .all:
                return pointViewModel.pointOders
        case .win:
                return pointViewModel.pointOders.filter { $0.type == .win }
        case .consume:
            return pointViewModel.pointOders.filter { $0.type == .consume }
        }
    }
    
    @Namespace private var namespace
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(spacing: 18) {
                Image(systemName: "chevron.backward")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Text("HISTORIQUE DES POINTS")
                    .font(.custom("HelveticaNeue-Regular", size: 14))
                Spacer()
            }
            .padding(.bottom, 30)
            
            HStack(spacing: 10) {
                ForEach(PointFilterViewModel.allCases, id: \.rawValue) { item in
                    Text(item.title)
                        .font(.custom("HelveticaNeue-Medium", size: 14))
                        .foregroundColor(selectedFilter == item ? .white : .black.opacity(0.5))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(
                            ZStack {
                                if (selectedFilter == item) {
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.blue)
                                        .matchedGeometryEffect(id: "tag", in: namespace)
                                } else {
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor( .gray.opacity(0.2))
                                }
                            }
                            
                        )
                        
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedFilter = item
                            }
                        }
                }
            }
            .padding(.bottom, 29)
            
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(filteredPointOrder ) { item in
                        PointViewRow(model: PointModel(title: "", type: item.type, totalPoints: item.totalPoints, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
                        
                        
                    }
                }
            }
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
            .environmentObject(PointViewModel())
    }
}
