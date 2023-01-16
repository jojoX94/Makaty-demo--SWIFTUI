//
//  TipsScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct TipsScreen: View {
    
    @StateObject var tipViewModel = TipViewModel()
    
    @State var selectedFilter: TipFilterViewModel = .all
    @Namespace private var namespace
    var filteredTips: [TipDataModel] {
        switch selectedFilter {
            case .all:
                    return tipViewModel.tipList
            case .iPad:
                return tipViewModel.tipList.filter { $0.category == .iPad }
            case .iPhone:
                return tipViewModel.tipList.filter { $0.category == .iPhone }
            case .Mac:
                return tipViewModel.tipList.filter { $0.category == .Mac }
            case .Watch:
                return tipViewModel.tipList.filter { $0.category == .Watch }
        }
    }
    
    @EnvironmentObject var viewRouter : RouterViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                HStack(spacing: 10) {
                    ForEach(TipFilterViewModel.allCases, id: \.rawValue) { item in
                        Text(item.title)
                            .font(.custom("SFProText-Regular", size: 14))
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
                
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 16) {
                        ForEach(filteredTips) { tipModel in
                            NavigationLink {
                                TipScreen(model: tipModel)
                            } label: {
                                TipViewRow(model: tipModel)
                            }

                        }
                    }
                }
                .padding(.horizontal)
                .refreshable {
                    
                }
            }
            .padding(.vertical, 21)
            .background(Color.white)
            .toolbar {
                CustomToolBarContent(titleType: .text, title: "Nos conseils de Pro") {
                    withAnimation {
                        viewRouter.showMenu = true
                    }
                }
            }
        }
    }
}

struct TipsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipsScreen()
            .environmentObject(RouterViewModel())
    }
}
