//
//  DSBase.swift
//  Dream
//
//  Created by Dream on 2020/12/8.
//

/// DSBase
public struct DS<DSBase> {
    
    /// Prefix property
    public let ds: DSBase
    
    /// Initialization method
    /// - Parameter ds: DSBase
    public init(_ ds : DSBase) {
        self.ds = ds
    }
}

/// DSCompatible
public protocol DSCompatible { }

public extension DSCompatible {
    
    /// Instance property
    var ds: DS<Self> {
        set { }
        get { DS(self) }
    }
    
    /// Static property
    static var ds: DS<Self>.Type {
        set { }
        get { DS<Self>.self }
    }
}
