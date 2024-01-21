//
//  FollowerView.swift
//  GitHubFollowers
//
//  Created by Julia Gurbanova on 21.01.2024.
//

import SwiftUI

struct FollowerView: View {
    var follower: Follower

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image(.avatarPlaceholder)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FollowerView(follower: Follower(login: "twostraws", avatarUrl: ""))
}
