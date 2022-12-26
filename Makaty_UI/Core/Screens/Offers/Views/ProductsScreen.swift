//
//  ProductsScreen.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct ProductsScreen: View {
    let productsList = [
        ProductDataModel(name: "Watch SE", imageUrl: "", modality: "Euismod sodales habitant ligula pulvinar sagittis. Id quis turpis lectus convallis viverra et potenti mattis. Libero facilisis nisl tortor morbi neque.", pointsByPayInCash: "500", pointsByPayInCredit: "300", costByPayInCash: "1 795 000", costByPayInCredit: "100 000"),
        ProductDataModel(name: "iPhone 14 128Gb", imageUrl: "", modality: "Blandit velit sit libero mi sem cursus erat. Facilisis nam feugiat gravida enim tortor. Sed feugiat libero ac sapien velit accumsan adipiscing. Consequat iaculis cras hendrerit semper venenatis ut quis.", pointsByPayInCash: "500", pointsByPayInCredit: "300", costByPayInCash: "1 795 000", costByPayInCredit: "100 000"),
    ]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing: 29) {
            TopNavigationBar(screenTitle: "Spéciale Noël") {
                presentationMode.wrappedValue.dismiss()
            }
            
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 16) {
                    ForEach(productsList) { model in
                        ProductViewRow(model: model)
                    }
                }
            }
            
            .refreshable {
                
            }
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

struct ProductsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScreen()
    }
}
