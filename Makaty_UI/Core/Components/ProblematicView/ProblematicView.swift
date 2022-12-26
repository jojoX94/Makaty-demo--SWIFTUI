//
//  ProblematicView.swift
//  Makaty_UI
//
//  Created by Madiapps on 26/12/2022.
//

import SwiftUI

struct ProblematicView: View {

    @State private var totalHeight = CGFloat(100) // no matter - just for static Preview !!
    @State private var tags: [String] = ["content", "content 2 ", "content 3", "content 4", "content 5"]

    var body: some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return VStack {
            Text("Some reasonnably long text that changes dynamically do can be any size").background(Color.red)
            VStack { // << external container
                GeometryReader { g in
                    ZStack(alignment: .topLeading) { // internal container
                        ForEach(self.tags, id: \.self) { tag in
                            TagView(content: tag, color: .red, action: {
                                    // self.tags.removeLast()         // << just for testing
                                })
                                .padding([.horizontal, .vertical], 4)
                                .alignmentGuide(.leading, computeValue: { d in
                                    if (abs(width - d.width) > g.size.width)
                                    {
                                        width = 0
                                        height -= d.height
                                    }
                                    let result = width
                                    if tag == self.tags.last! {
                                        width = 0 //last item
                                    } else {
                                        width -= d.width
                                    }
                                    return result
                                })
                                .alignmentGuide(.top, computeValue: {d in
                                    let result = height
                                    if tag == self.tags.last! {
                                        height = 0 // last item
                                    }
                                    return result
                                })
                        }
                    }.background(Color.green)
                    .background(GeometryReader {gp -> Color in
                        DispatchQueue.main.async {
                            // update on next cycle with calculated height of ZStack !!!
                            self.totalHeight = gp.size.height
                        }
                        return Color.clear
                    })
                }.background(Color.blue)
            }.frame(height: totalHeight)
        }.background(Color.gray)
    }
}

struct TagView: View {
    let content: String
    let color: Color
    let action: (() -> Void)?

    var body: some View {
        HStack {
            Text(content).padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            Button(action: action ?? {}) {
                Image(systemName: "xmark.circle").foregroundColor(Color.gray)
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 7))
        }
        .background(color)
        .cornerRadius(8.0)
    }
}

struct ProblematicView_Previews: PreviewProvider {
    static var previews: some View {
        ProblematicView()
    }
}
