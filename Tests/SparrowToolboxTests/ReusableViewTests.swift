//
//  ReusableViewTests.swift
//  
//
//  Created by Roy Sparrow on 2021/2/9.
//

import XCTest
@testable import SparrowToolbox

final class ReusableViewTests: XCTestCase {
    
    func testUITableViewCellReuseIdentifier() {
        // arrange
        
        // act
        
        // assert
        XCTAssert(UITableViewCell.reuseIdentifier == "UITableViewCell")
    }
    
    func testUICollectionViewCellReuseIdentifier() {
        // arrange
        
        // act
        
        // assert
        XCTAssert(UICollectionViewCell.reuseIdentifier == "UICollectionViewCell")
    }
    
    static var allTests = [
        ("testUITableViewCellReuseIdentifier", testUITableViewCellReuseIdentifier),
        ("testUICollectionViewCellReuseIdentifier", testUICollectionViewCellReuseIdentifier),
    ]
}
