//
//  LaunchScreenWithAnim.swift
//  Makaty_UI
//
//  Created by Madiapps on 01/12/2022.
//

import SwiftUI

struct LaunchScreenWithAnim: View {
    var body: some View {
        GeometryReader { geometry in
            
            VStack() {
                Text("MAKATY")
                    .font(.custom("HelveticaNeue-Bold", size: 40))
                
                Spacer()
                
                ProgressView(value: 38, total: 100)
                    .tint(.gray)
                    .clipShape(Rectangle())
                    .frame(width: geometry.size.width/3.4)
                    .scaleEffect(x: 1, y: 2, anchor: .center)
                    
            }
            .frame(height: geometry.size.height/2)
            .position(x: geometry.size.width / 2, y: geometry.size.height / 1.6)
        }
        
    }
}

struct LaunchScreenWithAnim_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenWithAnim()
    }
}
