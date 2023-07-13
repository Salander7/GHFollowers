//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 30/06/2023.
//

import Foundation

extension Date {
      
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
