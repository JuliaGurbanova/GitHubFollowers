//
//  UIView+Extension.swift
//  GitHubFollowers
//
//  Created by Julia Gurbanova on 20.01.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
