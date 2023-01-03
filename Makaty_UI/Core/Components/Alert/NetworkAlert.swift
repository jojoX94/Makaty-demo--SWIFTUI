//
//  NetworkAlert.swift
//  Makaty_UI
//
//  Created by Madiapps on 29/12/2022.
//

import SwiftUI

struct NetworkAlert: View {
    var body: some View {
        VStack {
            Image(systemName: "network")
                .font(.title)
            Text("Connection unavailable")
                .font(.custom("SFProText-Bold", size: 44))
            
            Button {
                
            } label: {
                Text("RETRY")
                    .font(.custom("SFProText-Medium", size: 24))
                    .foregroundColor(.black.opacity(0.8))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(
                        
                    )
            }

        }
        .foregroundColor(.white)
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.gray)
        )
    }
}

struct NetworkAlert_Previews: PreviewProvider {
    static var previews: some View {
        NetworkAlert()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
