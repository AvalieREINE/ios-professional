//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Soeur Zhang on 13/04/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
