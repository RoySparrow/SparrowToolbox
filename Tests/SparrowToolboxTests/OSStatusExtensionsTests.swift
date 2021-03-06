//
//  OSStatusExtensionsTests.swift
//  
//
//  Created by Roy Sparrow on 2021/2/9.
//

import AVFoundation
import XCTest
@testable import SparrowToolbox

final class OSStatusExtensionsTests: XCTestCase {
    
    func testNoErr() {
        // arrange
        let osStatus = noErr
        let correctDetailMsg = "No Error"

        // act
        let isNoErr = osStatus.isNoErr
        let error = osStatus.error
        let detailMsg = osStatus.detailMessage

        // assert
        XCTAssert(isNoErr, "OSStatus(\(osStatus)).isNoErr must be true.")
        XCTAssert(error == nil, "OSStatus(\(osStatus)).error must be nil.")
        XCTAssert(detailMsg == correctDetailMsg, "OSStatus(\(osStatus)).detailMessage should be \"\(correctDetailMsg)\", but find \"\(detailMsg)\" instead.")
    }
    
    func testUndefinedErr() {
        // arrange
        let osStatus: OSStatus = -9999
        let correctDetailMsg = "Undefined Error"

        // act
        let isNoErr = osStatus.isNoErr
        let error = osStatus.error
        let errorCode = osStatus.error?.code ?? 0
        let detailMsg = osStatus.detailMessage

        // assert
        XCTAssert(!isNoErr, "OSStatus(\(osStatus)) must be a error.")
        XCTAssert(error != nil, "OSStatus(\(osStatus)) should have error class.")
        XCTAssert(errorCode == Int(osStatus), "The error code must be equal to OSStatus(\(osStatus)), but find \(errorCode) instead.")
        XCTAssert(detailMsg == correctDetailMsg, "OSStatus(\(osStatus)).detailMessage should be \"\(correctDetailMsg)\", but find \"\(detailMsg)\" instead.")
    }
    
    func testDefinedErr() {
        // arrange
        let osStatus = kAudioUnitErr_MissingKey
        let correctDetailMsg = "AudioUnit: Missing Key"

        // act
        let isNoErr = osStatus.isNoErr
        let error = osStatus.error
        let errorCode = osStatus.error?.code ?? 0
        let detailMsg = osStatus.detailMessage

        // assert
        XCTAssert(!isNoErr, "OSStatus(\(osStatus)) must be a error.")
        XCTAssert(error != nil, "OSStatus(\(osStatus)) should have error class.")
        XCTAssert(errorCode == Int(osStatus), "The error code must be equal to OSStatus(\(osStatus)), but find \(errorCode) instead.")
        XCTAssert(detailMsg == correctDetailMsg, "OSStatus(\(osStatus)).detailMessage should be \"\(correctDetailMsg)\", but find \"\(detailMsg)\" instead.")
    }

    static var allTests = [
        ("testNoErr", testNoErr),
        ("testUndefinedErr", testUndefinedErr),
        ("testDefinedErr", testDefinedErr),
    ]
}
