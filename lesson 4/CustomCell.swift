//
//  CustomCell.swift
//  lesson 4
//
//  Created by Alexander Myskin on 10.04.2022.
//

import UIKit

class CustomCell: UITableViewCell {
    let label = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {

        selectionStyle = .none

        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true

        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
