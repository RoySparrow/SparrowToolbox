//
//  HelpfulFunctions.swift
//  
//
//  Created by Roy Sparrow on 2021/2/9.
//

import Foundation

func printLog<T>(message: T, file: String = #file, method: String = #function, line: Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    Swift.print("[\(fileName)(\(line)), \(method)] \(message)")
    #endif
}
