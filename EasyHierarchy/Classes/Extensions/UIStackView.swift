//
//  UIStackView.swift
//  EasyHierarchy
//
//  Created by Gabe on 01/04/22.
//

import UIKit

extension UIStackView {
    
    /// Arrange the given view into the stack.
    /// - Parameter view: the child view to arrange into the stack
    func arrange(_ view: UIView) {
        addArrangedSubview(view)
    }
    
    /// Arrange the given views into the stack.
    /// - Parameter views: the child views to arrange into the stack
    func arrange(_ views: [UIView]) {
        views.forEach(addArrangedSubview)
    }
}
