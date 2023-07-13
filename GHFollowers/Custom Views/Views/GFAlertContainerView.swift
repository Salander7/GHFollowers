//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 10/07/2023.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    private func configure() {
       backgroundColor = .systemBackground
       layer.cornerRadius = 30
       layer.borderWidth = 3
       layer.borderColor = UIColor.white.cgColor
       translatesAutoresizingMaskIntoConstraints = false
    }
    
}
