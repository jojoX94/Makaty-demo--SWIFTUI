//
//  Text+Extensions.swift
//  Makaty_UI
//
//  Created by Madiapps on 27/12/2022.
//

import Foundation
import SwiftUI

extension Text {
    init(html: String, alert: String? = nil) {
        do {
            var htmlStyled = html
            htmlStyled = "<html><head><style type=\"text/css\">body {font-size: 16px;font-family: Roboto, sans-serif;color: black;}br {display: block;line-height: 100%;}</style></head><body>" +
                            htmlStyled  +
                            " </body></html>"
            
            try self.init(htmlStyled.htmlToAttributedString())
        } catch {
            self.init(alert ?? error.localizedDescription)
        }
    }
}
