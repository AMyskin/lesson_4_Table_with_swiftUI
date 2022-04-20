//
//  View.swift
//  lesson 4
//
//  Created by Alexander Myskin on 14.04.2022.
//

import UIKit

final class MyView: UIView {
    private let table = UITableView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = .green
        table.register(CustomCell.self, forCellReuseIdentifier: "Cell")
        table.delegate = self
        table.dataSource = self
        addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false

        table.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        table.topAnchor.constraint(equalTo: topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

extension MyView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        11 // someArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        cell.label.text = "\(indexPath.row)" // someArray[indexPath.row]

//        var content = cell.defaultContentConfiguration()
//        content.text = "Дефолтный текст \(indexPath.row)"
//        cell.contentConfiguration = content

        return cell
    }
}

extension MyView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
                    IndexPath) {
        print("нажата строка No \(indexPath.row) в секции \(indexPath.section)")
    }
}
