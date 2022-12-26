//
//  PointLabel.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI


struct PointLabel: View {
    let point: String
    let backgroundColor: Color
    
    var body: some View {
        VStack(spacing: 0) {
            Text("A GAGNER")
                .font(.custom("SFProText-Bold", size: 12))
                .foregroundColor(.white)
            Text(point)
                .font(.custom("SFProText-Bold", size: 30))
                .foregroundColor(.white)
            Text("POINTS")
                .font(.custom("SFProText-Bold", size: 12))
                .foregroundColor(.white)
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 8)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(backgroundColor)
        )
    }
}

struct PointLabel_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PointLabel(point: "500", backgroundColor: Color(hex: "#93117E"))
            PointLabel(point: "300", backgroundColor: Color(hex: "#00A0D9"))
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
