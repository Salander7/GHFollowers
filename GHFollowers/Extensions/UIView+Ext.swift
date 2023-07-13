//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 12/07/2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
