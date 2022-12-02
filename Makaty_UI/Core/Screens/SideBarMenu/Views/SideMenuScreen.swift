//
//  SideMenu.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct SideMenuScreen: View {
    
    @State var selectedMenu: Page = .point
    @EnvironmentObject var viewRouter: ViewRoutterViewModel
    
    @Namespace private var namespace
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .font(.title)
                    .onTapGesture {
                        withAnimation {
                            viewRouter.showMenu = false
                        }
                    }
                    .padding(.leading, UIScreen.main.bounds.width * (1/3))
                Spacer()

            }
            
            VStack(alignment: .leading) {
                ForEach(Page.allCases, id:\.rawValue) { item in
                    LinkLabel(icon: item.icon, title: item.title)
                        .foregroundColor(selectedMenu == item ? .white : .black)
                        .background(
                            ZStack {
                                if selectedMenu == item {
                                    Color.blue
                                        .matchedGeometryEffect(id: "menu", in: namespace)
                                }
                            }
                        )
                        .onTapGesture {
                            withAnimation {
                                selectedMenu = item
                            }
                            viewRouter.currentPage = item
                            
                        }
                }
            }
            
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.leading, 30)
        .padding(.trailing, 22)
        .background(
            Color.gray
        )
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuScreen()
            .environmentObject(ViewRoutterViewModel())
    }
}
