//
//  Stack.swift
//  EasyHierarchy
//
//  Created by Gabe on 28/03/22.
//

import UIKit

class HStack: UIStackView {
    init(
        spacing: CGFloat = .zero,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .fill,
        arrange views: [UIView]) {
            super.init(frame: .zero)
            self.spacing = spacing
            self.distribution = distribution
            self.alignment = alignment
            views.forEach(addArrangedSubview)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}

class VStack: UIStackView {
    init(
        spacing: CGFloat = .zero,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .fill,
        arrange views: [UIView]) {
            super.init(frame: .zero)
            self.axis = .vertical
            self.spacing = spacing
            self.distribution = distribution
            self.alignment = alignment
            views.forEach(addArrangedSubview)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
