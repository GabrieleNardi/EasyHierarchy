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
    private let containerVStack = VStack(spacing: 24)
    private let surnameLabel = UILabel(text: "Surname", textColor: .black)
    private let surnameTextField = UITextField(textColor: .black, placeholder: "Doe", placeholderColor: .lightGray)
    private let nameLabel = UILabel(text: "Name", textColor: .black)
    private let nameTextField = UITextField(textColor: .black, placeholder: "John", placeholderColor: .lightGray)
    private let addressLabel = UILabel(text: "Address", textColor: .black)
    private let addressTextField = UITextField(textColor: .black, placeholder: "5th street", placeholderColor: .lightGray)
    private let streetNumberLabel = UILabel(text: "Street Number", textColor: .black)
    private let streetNumberTextField = UITextField(textColor: .black, placeholder: "21", placeholderColor: .lightGray)
    private let cityLabel = UILabel(text: "City", textColor: .black)
    private let cityTextField = UITextField(textColor: .black, placeholder: "Cupertino", placeholderColor: .lightGray)
    private let countryLabel = UILabel(text: "Country", textColor: .black)
    private let countryTextField = UITextField(textColor: .black, placeholder: "California", placeholderColor: .lightGray)
    
    override func loadView() {
        super.loadView()
        view.addSubview(containerVStack, insets: UIEdgeInsets(top: 8, left: 24, bottom: 16, right: 24))
        let labels = [surnameLabel, nameLabel, addressLabel, streetNumberLabel, cityLabel, countryLabel]
        let textFields = [surnameTextField, nameTextField, addressTextField, streetNumberTextField, cityTextField, countryTextField]
        containerVStack.arrange(makeRows(labels: labels, textFields: textFields) + [UIView()])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    private func makeRows(labels: [UILabel], textFields: [UITextField]) -> [UIStackView] {
        return zip(labels, textFields).map { label, textField in
            let row = HStack()
            row.arrange([label, UIView(), textField])
            return row
        }
    }
}
