//
//  ViewController.swift
//  lesson 4
//
//  Created by Alexander Myskin on 10.04.2022.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {


    private let myView = MyView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        title = "Table"

        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        myView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        myView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }
        .previewDevice("Iphone 13")
    }
}

