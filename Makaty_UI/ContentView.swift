
//  ContentView.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isFirstLaunch = false
    @StateObject var networkMonitor = NetworkMonitor()

    @StateObject var authViewModel = AuthViewModel()
    
    var body: some View {
        Group {
            if isFirstLaunch {
                ActivateNotifScreen(isFirstLaunch: $isFirstLaunch)
            } else {
                if authViewModel.isLoading {
                    ProgressView()
                } else {
                    RouterScreen()
                        .environmentObject(authViewModel)
                        .alert("Erreur de connection", isPresented: $networkMonitor.isConnected.not) {}
                }
                
            }
        }
        .onAppear{
            isFirstLaunch = !isAppAlreadyLaunchedOnce()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
