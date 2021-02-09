//
//  HelpfulFunctions.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2021/1/6.
//  Copyright © 2021 SparrowStudio. All rights reserved.
//

import Foundation

func printLog<T>(message: T, file: String = #file, method: String = #function, line: Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    Swift.print("[\(fileName)(\(line)), \(method)] \(message)")
    #endif
}
