//
//  ExampleAlignmentGuide.swift
//  Makaty_UI
//
//  Created by Madiapps on 05/12/2022.
//

import SwiftUI

struct ExampleAlignmentGuide: View {
    var body: some View {
        VStack(alignment: .trailing) {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .alignmentGuide(.trailing) { dim in
                    dim[.leading]
                }
            Text("My new Hello, World! demo")
        }
        .background(Color.red)
        .frame(width: 400, height: 400)
        .background(Color.blue)
    }
}

struct ExampleAlignmentGuide_Previews: PreviewProvider {
    static var previews: some View {
        ExampleAlignmentGuide()
    }
}
