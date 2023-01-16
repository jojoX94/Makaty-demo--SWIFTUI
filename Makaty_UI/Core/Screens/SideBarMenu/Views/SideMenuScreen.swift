//
//  SideMenu.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct SideMenuScreen: View {
    
    @State var selectedMenu: Page = .point
    @EnvironmentObject var viewRouter: RouterViewModel
    
    @Namespace private var namespace
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 58) {
                VStack(spacing: 34) {
                    HStack {
                        Spacer()
                        Image(systemName: "xmark")
                            .font(.title)
                            .onTapGesture {
                                withAnimation {
                                    viewRouter.showMenu = false
                                }
                            }
                    }
                    
                    Image("LogoFull")
                }
                
                VStack(alignment: .leading, spacing: 20) {
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
            }
            
            Spacer()
            
            HStack(spacing: 16) {
                Link(destination: URL(string: "http://www.makaty.mg/")!) {
                    OutlinedButton(label: "MAKATY", iconName: "ArrowRightIcon")
                }
                
                Link(destination: URL(string: "https://www.facebook.com/MakatyFB/")!) {
                    IconButton(iconName: "FacebookIcon")
                }
            }
            
        }
        .padding(.top, 28)
        .padding(.horizontal, 18)
        .padding(.bottom, 40)
        .background(.white)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuScreen()
            .environmentObject(RouterViewModel())
    }
}
