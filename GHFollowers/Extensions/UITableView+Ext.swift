//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 12/07/2023.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
