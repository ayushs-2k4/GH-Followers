//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class GFAvatarImageView: UIImageView {
    let placeholderImage = UIImage(resource: .avatarPlaceholder)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.image = placeholderImage
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#Preview {
    GFAvatarImageView(frame: .zero)
}
