//
//  ReusableView.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2020/12/21.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import UIKit

protocol ReusableView {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView {}

extension UICollectionViewCell: ReusableView {}
