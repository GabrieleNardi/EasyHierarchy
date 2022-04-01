//
//  UITextField.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

extension UITextField {
    convenience init(
        text: String? = nil,
        textFont: UIFont = UIFont.systemFont(ofSize: UIFont.systemFontSize),
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment = .natural,
        placeholder: String? = nil,
        placeholderFont: UIFont? = nil,
        placeholderColor: UIColor? = nil,
        paragraphStyle: NSMutableParagraphStyle? = nil,
        rightView: UIView? = nil) {
            self.init()
            self.text = text
            self.font = textFont
            self.textAlignment = textAlignment
            if let textColor = textColor { self.textColor = textColor }
            if let rightView = rightView { self.rightView = rightView }
            
            var attributes: [NSAttributedString.Key: Any] = [:]
            if let placeholderFont = placeholderFont { attributes[NSAttributedString.Key.font] = placeholderFont }
            if let placeholderColor = placeholderColor { attributes[NSAttributedString.Key.foregroundColor] = placeholderColor }
            if let paragraphStyle = paragraphStyle { attributes[NSAttributedString.Key.paragraphStyle] = paragraphStyle }
            if let placeholder = placeholder { attributedPlaceholder = NSAttributedString(string: placeholder, attributes: attributes) }
        }
}
