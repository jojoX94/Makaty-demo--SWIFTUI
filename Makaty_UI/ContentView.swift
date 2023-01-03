
//  ContentView.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var networkMonitor = NetworkMonitor()
    
    var body: some View {
        RouterScreen()
            .alert("Erreur de connection", isPresented: $networkMonitor.isConnected.not) {
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
