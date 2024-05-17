//
//  GFButton.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }

    private func configure() {
        self.layer.cornerRadius = 10
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#Preview {
    GFButton(backgroundColor: .systemGreen, title: "This is title")
}
