//
//  StringProtocol+Extensions.swift
//  Makaty_UI
//
//  Created by Madiapps on 27/12/2022.
//

import Foundation

extension StringProtocol {
    func htmlToAttributedString() throws -> AttributedString {
        try .init(
            .init(
                data: .init(utf8),
                options: [
                    .documentType: NSAttributedString.DocumentType.html,
                    .characterEncoding: String.Encoding.utf8.rawValue
                ],
                documentAttributes: nil
            )
        )
    }
}
