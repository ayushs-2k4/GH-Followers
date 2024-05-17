//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemGray4.cgColor
        self.textColor = .label
        self.tintColor = .label
        self.textAlignment = .center
        self.font = .preferredFont(forTextStyle: .title2)
        self.adjustsFontSizeToFitWidth = true
        self.minimumFontSize = 12
        self.backgroundColor = .tertiarySystemBackground
        self.autocorrectionType = .no
        self.keyboardType = .default
        self.returnKeyType = .search
        
        self.placeholder = "Enter a username"
    }
}

#Preview {
    GFTextField()
}
