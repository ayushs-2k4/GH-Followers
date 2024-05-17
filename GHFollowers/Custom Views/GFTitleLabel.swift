//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class GFTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)

        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        self.textColor = .label
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.9
        self.lineBreakMode = .byTruncatingTail
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#Preview {
    let label = GFTitleLabel(textAlignment: .left, fontSize: 23)
    label.text = "This is title label"
    
    return label
}
