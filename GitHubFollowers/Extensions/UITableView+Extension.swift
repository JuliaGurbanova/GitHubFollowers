//
//  UITableView+Extension.swift
//  GitHubFollowers
//
//  Created by Julia Gurbanova on 20.01.2024.
//

import UIKit

extension UITableView {
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
