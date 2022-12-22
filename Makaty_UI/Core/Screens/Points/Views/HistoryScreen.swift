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
        VStack(alignment: .leading, spacing: 20) {
            
            TopNavigationBar(screenTitle: "Historique des points") {
                presentationMode.wrappedValue.dismiss()
            }
            
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 10) {
                    ForEach(PointFilterViewModel.allCases, id: \.rawValue) { item in
                        Text(item.title)
                            .font(.custom("SFProText-REegular", size: 14))
                            .foregroundColor(selectedFilter == item ? .white : Color("Gray"))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(
                                ZStack {
                                    if (selectedFilter == item) {
                                        RoundedRectangle(cornerRadius: 24)
                                            .foregroundColor(Color("Blue"))
                                            .matchedGeometryEffect(id: "tag", in: namespace)
                                    } else {
                                        RoundedRectangle(cornerRadius: 24)
                                            .stroke(Color("Gray"), lineWidth: 1)
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
                
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(filteredPointOrder ) { item in
                            NavigationLink(destination: {
                                DetailHistoryView()
                            }, label: {
                                CustomPointViewRow(model: PointModel(title: "Ticket N°00123", type: item.type, totalPoints: item.totalPoints, details: "", activeDate: "", expireDate: "", purchaseDate: ""))
                            })
                        }
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
