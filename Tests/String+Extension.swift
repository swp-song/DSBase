//
//  StringExtension.swift
//  Dream
//
//  Created by Dream on 2021/10/9.
//

import DSBase
import Foundation

extension String: DSCompatible {}
extension NSString: DSCompatible {}

extension DS where DSBase == String {
    var count: Int { ds.count }
}

extension DS where DSBase: ExpressibleByStringLiteral {
    
    static func numberCount<T: ExpressibleByStringLiteral>(_ s: T) -> Int {
        guard let string = s as? String else { return 0 }
        return string.ds.numberCount
    }
    
    var numberCount: Int {
        guard let string = ds as? String else { return 0 }
        var count = 0
        for c in string where ("0"..."9").contains(c)  {
            count += 1
        }
        return count
    }
}


