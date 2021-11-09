//
//  FruitsTableViewController.swift
//  muranakaKadai13
//
//  Created by 村中令 on 2021/11/08.
//

import UIKit

class FruitsTableViewController: UITableViewController {
    private let fruits: [Fruits] =
        [
            Fruits(name: "りんご", isChecked: false),
            Fruits(name: "みかん", isChecked: true),
            Fruits(name: "バナナ", isChecked: false),
            Fruits(name: "パイナップル", isChecked: true)
        ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        ) as! FruitTableViewCell // swiftlint:disable:this force_cast

        cell.configure(fruits: fruits[indexPath.row])

        return cell
    }
}
