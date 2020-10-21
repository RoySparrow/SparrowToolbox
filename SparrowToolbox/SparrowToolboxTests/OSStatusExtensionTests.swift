//
//  OSStatusExtensionTests.swift
//  SparrowToolboxTests
//
//  Created by Roy Sparrow on 2020/10/21.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import XCTest
import AVFoundation
@testable import SparrowToolbox

class OSStatusExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

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
}
