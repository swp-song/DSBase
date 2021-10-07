//
//  DSClass.swift
//  
//
//  Created by Dream on 2021/10/7.
//

import DSBase

class DSClass { }

extension DSClass: DSCompatible { }

extension DS where DSBase: DSClass {
    
    static var dsTest: Bool { true }
    static func dsTest(_ t: Bool) -> Bool { t }
    
    var dsTest: Bool { true }
    func dsTest(_ t: Bool) -> Bool { t }
    
}
