//
//  UIButton.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

extension UIButton {
    convenience init(
        title: String? = nil,
        font: UIFont? = nil,
        textColor: UIColor? = nil,
        image: UIImage? = nil,
        backgroundColor: UIColor? = nil,
        tintColor: UIColor? = nil) {
            self.init()
            if let title = title { setTitle(title, for: .normal) }
            if let font = font { titleLabel?.font = font }
            if let textColor = textColor { setTitleColor(textColor, for: .normal) }
            if let image = image { setImage(image, for: .normal) }
            if let backgroundColor = backgroundColor { self.backgroundColor = backgroundColor }
            if let tintColor = tintColor { self.tintColor = tintColor }
    }
}
