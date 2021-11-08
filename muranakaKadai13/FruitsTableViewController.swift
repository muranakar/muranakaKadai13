//
//  FruitsTableViewController.swift
//  muranakaKadai13
//
//  Created by 村中令 on 2021/11/08.
//

import UIKit

class FruitsTableViewController: UITableViewController {
    private var fruits: [Fruits] =
        [
            Fruits(name: "りんご", check: false),
            Fruits(name: "みかん", check: true ),
            Fruits(name: "バナナ", check: false),
            Fruits(name: "パイナップル", check: true)
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

        cell.configureLabelNameAndCheckImageView(
            name: fruits[indexPath.row].name,
            check: fruits[indexPath.row].check
        )
        return cell
    }
}
