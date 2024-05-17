//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class GFAlertContainerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        self.layer.cornerRadius = 16
        self.backgroundColor = .systemBackground
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#Preview {
    GFAlertContainerView()
}
