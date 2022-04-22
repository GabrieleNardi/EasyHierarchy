//
//  ViewController.swift
//  EasyHierarchy
//
//  Created by Gabe on 03/27/2022.
//  Copyright (c) 2022 Gabe. All rights reserved.
//

import UIKit
import EasyHierarchy

class ViewController: UIViewController {

    private let containerVStack = VStack()
    private let row = HStack()
    private let label = UILabel(text: "Label", textColor: .black)
    private let textField = UITextField(textColor: .black, placeholder: "Write something", placeholderColor: .lightGray)
    private let clearButton = UIButton(title: "Clear", textColor: .blue)
    
    override func loadView() {
        super.loadView()
        view.addSubview(containerVStack, insets: UIEdgeInsets(top: 8, left: 24, bottom: 16, right: 24))
        containerVStack.arrange([row, clearButton])
        row.arrange([label, textField])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        clearButton.addTarget(self, action: #selector(didTapOnClearButton), for: .touchUpInside)
    }
    
    @objc private func didTapOnClearButton() {
        textField.text = ""
    }
}
