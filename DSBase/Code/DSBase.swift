//
//  DSBase.swift
//
//
//  Created by Dream on 2020/12/8.
//

public struct DS<DSBase> {
    
    var dsBase : DSBase
    init(_ dsBase : DSBase) {
        self.dsBase = dsBase
    }
}


public protocol DSCompatible { }

public extension DSCompatible {
    
    var ds : DS<Self> {
        set {}
        get { DS(self) }
    }
    
    static var ds : DS<Self>.Type {
        set {}
        get { DS<Self>.self }
    }
}



