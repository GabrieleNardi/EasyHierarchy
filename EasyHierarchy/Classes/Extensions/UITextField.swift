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
        placeholder: String? = nil,
        rightView: UIView? = nil) {
            self.init()
            self.text = text
            self.font = textFont
            self.placeholder = placeholder
            if let rightView = rightView { self.rightView = rightView }
        }
}
