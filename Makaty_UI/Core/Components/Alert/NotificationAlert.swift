//
//  NotificationAlert.swift
//  Makaty_UI
//
//  Created by Madiapps on 03/01/2023.
//

import SwiftUI

struct NotificationAlert: View {
    let title: String
    
    var body: some View {
        VStack(spacing: 24) {
            Text(title)
                .textBody()
                .multilineTextAlignment(.center)
                .lineSpacing(1.375)
                .padding(.horizontal)
            Button {
                
            } label: {
                Text("Fermer")
                    .textwithButtonStyle()
            }
        }
        .padding(.vertical)
        .frame(width: 300)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.white)
        )
    }
}

struct NotificationAlert_Previews: PreviewProvider {
    static var previews: some View {
        NotificationAlert(title: "Les notifications ne sont pas encore activées. Vous pouvez les activer ultérieurement en passant par votre profil.")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
