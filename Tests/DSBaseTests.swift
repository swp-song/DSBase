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
    
    func testStringExtension() throws {
        let s01 = "qwertyuiop123asdfghjkl456zxcvbnm789[;,]'./"
        let s02 = "1234567890"
        let ns1 = s02 as NSString
        let nm1 = NSMutableString(string: s02)
    
        XCTAssertTrue(s01.ds.numberCount == 9)
        XCTAssertTrue(s01.count == s01.ds.count)
        XCTAssertTrue(s02.ds.numberCount == 10)
        XCTAssertTrue(s02.ds.numberCount == ns1.ds.numberCount)
        XCTAssertTrue(ns1.ds.numberCount == nm1.ds.numberCount)
    
        XCTAssertTrue(String.ds.numberCount(s01) == s01.ds.numberCount)
        XCTAssertTrue(NSString.ds.numberCount(s01) == String.ds.numberCount(s01))
        XCTAssertTrue(NSMutableString.ds.numberCount(s01) == NSString.ds.numberCount(s01))
    }
}


