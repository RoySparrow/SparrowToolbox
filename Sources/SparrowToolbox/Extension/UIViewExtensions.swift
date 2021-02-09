//
//  UIViewExtensions.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2020/12/21.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import UIKit

extension UIView {
    
    var snapshot: UIImage {
        return UIGraphicsImageRenderer(size: bounds.size).image { _ in
            drawHierarchy(in: CGRect(origin: .zero, size: bounds.size), afterScreenUpdates: true)
        }
    }
}
