//
//  UIView+NSLayoutConstraints.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

extension UIView {
    
    /// It sets constraint for width.
    /// - Parameter width: the size for the width
    /// - Returns: the view to which constraint has been set
    func frame(width: CGFloat) -> Self {
        frame(width: width, height: nil)
    }
    
    /// It sets constraint for height.
    /// - Parameter width: the size for the height
    /// - Returns: the view to which constraint has been set
    func frame(height: CGFloat) -> Self {
        frame(width: nil, height: height)
    }
    
    /// It sets constraint for width and height.
    /// - Parameters:
    ///   - width: the size for the width
    ///   - height: the size for the height
    /// - Returns: the view to which constraints have been set
    func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        var constraints: [NSLayoutConstraint] = []
        if let width = width {
            constraints.append(widthAnchor.constraint(equalToConstant: width))
        }
        if let height = height {
            constraints.append(heightAnchor.constraint(equalToConstant: height))
        }
        NSLayoutConstraint.activate(constraints)
        return self
    }
    
    /// Add the given view as child and sets constraints to satisfy the `padding` and `useSafeArea` parameters.
    /// - Parameters:
    ///   - view: the child view
    ///   - padding: apply the padding to each edge between the father and the child view
    ///   - useSafeArea: a `Boolean` parameter to use the father view `safeArea` or not
    func addSubview(_ view: UIView, padding: CGFloat, useSafeArea: Bool = true) {
        addSubview(view, top: padding, left: padding, bottom: padding, right: padding, useSafeArea: useSafeArea)
    }
    
    /// Add the given view as child and sets constraints to satisfy the `insets` and `useSafeArea` parameters.
    /// - Note: This method is designed to add different padding between each father's and child 's edge.
    /// - Parameters:
    ///   - view: the child view
    ///   - insets: apply insets to each edge between the father and the child view
    ///   - useSafeArea: a `Boolean` parameter to use the father view `safeArea` or not
    func addSubview(_ view: UIView, insets: UIEdgeInsets, useSafeArea: Bool = true) {
        addSubview(view, top: insets.top, left: insets.left, bottom: insets.bottom, right: insets.right, useSafeArea: useSafeArea)
    }
    
    /// This method is designed to set a custom number of constraints to the given `view`.
    /// - Parameters:
    ///   - view: the child view
    ///   - top: the top inset
    ///   - left: the left inset
    ///   - bottom: the bottom inset
    ///   - right: the right inset
    ///   - centerX: the centerX inset
    ///   - centerY: the centerY inset
    ///   - useSafeArea: a `Boolean` parameter to use the father view `safeArea` or not
    func addSubview(_ view: UIView, top: CGFloat? = nil, left: CGFloat? = nil, bottom: CGFloat? = nil, right: CGFloat? = nil, centerX: CGFloat? = nil, centerY: CGFloat? = nil, useSafeArea: Bool = true) {
        addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        var constraints: [NSLayoutConstraint] = []
        if useSafeArea {
            if let top = top { constraints.append(view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: top)) }
            if let left = left { constraints.append(view.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: left)) }
            if let bottom = bottom { constraints.append(view.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -bottom)) }
            if let right = right { constraints.append(view.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -right)) }
            if let centerX = centerX { constraints.append(view.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: centerX)) }
            if let centerY = centerY { constraints.append(view.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: centerY)) }
        } else {
            if let top = top { constraints.append(view.topAnchor.constraint(equalTo: topAnchor, constant: top)) }
            if let left = left { constraints.append(view.leftAnchor.constraint(equalTo: leftAnchor, constant: left)) }
            if let bottom = bottom { constraints.append(view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -bottom)) }
            if let right = right { constraints.append(view.rightAnchor.constraint(equalTo: rightAnchor, constant: -right)) }
            if let centerX = centerX { constraints.append(view.centerXAnchor.constraint(equalTo: centerXAnchor, constant: centerX)) }
            if let centerY = centerY { constraints.append(view.centerYAnchor.constraint(equalTo: centerYAnchor, constant: centerY)) }
        }
        NSLayoutConstraint.activate(constraints)
    }
    
    /// This method is designed to let the user a high level of customisation for the view.
    /// - Parameters:
    ///   - view: the child view
    ///   - constraints: an array of `NSLayoutConstraint` to activate to the child view
    func addSubview(_ view: UIView, constraints: [NSLayoutConstraint]) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
    }
}
