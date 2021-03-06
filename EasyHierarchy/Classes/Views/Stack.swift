//
//  Stack.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

/// An horizontal `UIStackView`.
public class HStack: UIStackView {
    public init(
        spacing: CGFloat = .zero,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .fill,
        arrange views: [UIView] = []) {
            super.init(frame: .zero)
            self.spacing = spacing
            self.distribution = distribution
            self.alignment = alignment
            guard !views.isEmpty else { return }
            views.forEach(addArrangedSubview)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}

/// A vertical `UIStackView`.
public class VStack: UIStackView {
    public init(
        spacing: CGFloat = .zero,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .fill,
        arrange views: [UIView] = []) {
            super.init(frame: .zero)
            self.axis = .vertical
            self.spacing = spacing
            self.distribution = distribution
            self.alignment = alignment
            guard !views.isEmpty else { return }
            views.forEach(addArrangedSubview)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
