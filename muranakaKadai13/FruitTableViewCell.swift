//
//  FruitTableViewCell.swift
//  muranakaKadai13
//
//  Created by 村中令 on 2021/11/08.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    @IBOutlet weak private var fruitCheckImageView: UIImageView!
    @IBOutlet weak private var fruitNameLabel: UILabel!

    func configureLabelNameAndCheckImageView(name: String, check: Bool) {
        fruitNameLabel.text = name
        if check {
            fruitCheckImageView.isHidden = false
        } else {
            fruitCheckImageView.isHidden = true
        }
    }
}
