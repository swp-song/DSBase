import Foundation

import XCTest
@testable import DSBase

final class DSBaseTests: XCTestCase {
    
    func testExample() throws {
        
        let dsStruct = DSStruct()
        XCTAssertTrue(DSStruct.ds.dsTest)
        XCTAssertTrue(DSStruct.ds.dsTest(true))
        XCTAssertTrue(dsStruct.ds.dsTest)
        XCTAssertFalse(dsStruct.ds.dsTest(false))
        
        let dsClass = DSClass()
        XCTAssertTrue(DSStruct.ds.dsTest)
        XCTAssertFalse(DSStruct.ds.dsTest(false))
        XCTAssertTrue(dsClass.ds.dsTest)
        XCTAssertTrue(dsClass.ds.dsTest(true))
    }
    
}
