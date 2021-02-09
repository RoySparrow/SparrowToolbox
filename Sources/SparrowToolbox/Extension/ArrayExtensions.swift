//
//  ArrayExtensions.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2020/12/21.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import Foundation

extension Array {
    
    // use case:
    //
    // guard let element = elementArray[safe: 0] else { return }
    public subscript (safe index: Index) -> Element? {
        return index >= 0 && index < count ? self[index] : nil
    }
}
