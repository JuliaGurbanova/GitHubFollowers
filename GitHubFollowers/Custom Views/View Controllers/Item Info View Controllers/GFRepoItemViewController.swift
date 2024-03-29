//
//  GFRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Julia Gurbanova on 19.01.2024.
//

import UIKit

protocol GFRepoItemViewControllerDelegate: AnyObject {
    func didTapGiHubProfile(for user: User)
}

class GFRepoItemViewController: GFItemInfoViewController {

    weak var delegate: GFRepoItemViewControllerDelegate!

    init(user: User, delegate: GFRepoItemViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(color: .systemPurple, title: "GitHub Profile", systemImageName: "person")
    }

    override func actionButtonTapped() {
        delegate.didTapGiHubProfile(for: user)
    }
}
