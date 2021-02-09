//
//  UIColorExtensions.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2021/1/6.
//  Copyright © 2021 SparrowStudio. All rights reserved.
//

import UIKit

extension UIColor {
    
    public convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1) {
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: alpha)
    }
}
