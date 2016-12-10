//
//  SegmentedControl.swift
//  PHEV
//
//  Created by Aaron Striegel on 12/10/16.
//  Copyright © 2016 Claire Sonderman. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable class SegmentedControl: UIControl {
    private var labels = [UILabel]()
    var items:[String] = ["All", "Favorites"] {
        didSet {
            setupLabels()
        }
    }
    
    func setupLabels() {
        for label in labels {
            label.removeFromSuperview()
        }
        labels.removeAll(keepingCapacity: true)
        for index in 1...items.count {
            let label =  UILabel(frame: CGRectZero)
            label.text = items[index-1]
            label.textAlignment = center
            label.textColor = UIColor(white: 0.5, alpha:1.0)
            self.addSubview(<#T##view: UIView##UIView#>)
        }
        
    }
    
    
}
