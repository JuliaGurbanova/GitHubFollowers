//
//  GFRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Julia Gurbanova on 19.01.2024.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }

    override func actionButtonTapped() {
        delegate.didTapGiHubProfile(for: user)
    }
}
