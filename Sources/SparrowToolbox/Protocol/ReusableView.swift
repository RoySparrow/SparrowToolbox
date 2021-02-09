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
    
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// use case:
//
// tableView.register(customTableViewCell.self, forCellReuseIdentifier: customTableViewCell.reuseIdentifier)
extension UITableViewCell: ReusableView {}

// use case:
//
// collectionView.register(customCollectionViewCell.self, forCellWithReuseIdentifier: customCollectionViewCell.reuseIdentifier)
extension UICollectionViewCell: ReusableView {}
