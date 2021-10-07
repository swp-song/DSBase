//
//  DSStruct.swift
//  
//
//  Created by Dream on 2021/10/7.
//

import DSBase

struct DSStruct { }

extension DSStruct : DSCompatible { }

extension DS where DSBase == DSStruct {
    
    static var dsTest: Bool { true }
    static func  dsTest(_ t: Bool) -> Bool { t }
    
    var dsTest: Bool { true }
    func dsTest(_ t: Bool) -> Bool { t }
    
}
