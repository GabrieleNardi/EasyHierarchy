//
//  UILabel.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

public extension UILabel {
    convenience init(
        text: String? = nil,
        numberOfLines: Int = 1,
        font: UIFont = UIFont.systemFont(ofSize: UIFont.systemFontSize),
        textAlignment: NSTextAlignment = .natural,
        textColor: UIColor? = nil) {
            self.init()
            self.text = text
            self.font = font
            self.numberOfLines = numberOfLines
            self.textAlignment =  textAlignment
            if let textColor = textColor { self.textColor = textColor }
        }
}
