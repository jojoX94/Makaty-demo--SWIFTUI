//
//  MainScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 02/12/2022.
//

import SwiftUI

struct RouterScreen: View {
    
    @StateObject var viewRouter = ViewRoutterViewModel()
    
    var body: some View {
        ZStack {
            
            SideMenuScreen()
            
            CurrentScreen()
                .rotation3DEffect(.init(degrees: viewRouter.showMenu ? -15 : 0), axis: (x: 0, y: 1, z: 0), anchor: .trailing)
                .offset(x: viewRouter.showMenu ? 500 : 0)
        }
        .environmentObject(viewRouter)
    }
}

struct RouterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RouterScreen()
    }
}

extension RouterScreen {
    private func CurrentScreen() -> some View {
        Group {
            switch viewRouter.currentPage {
                case .point:
                    PointScreen()
                case .card:
                    CardScreen()
                case .profile:
                    ProfileScreen()
                case .offers:
                    OfferScreen()
                case .products:
                    Text("Products")
                case .tips:
                    Text("Tips")
            }
        }
        
    }
}
