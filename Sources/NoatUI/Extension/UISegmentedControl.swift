//
//  File.swift
//  
//
//  Created by Toan Pham on 5/25/22.
//

import Foundation
import UIKit

public extension UISegmentedControl {
    convenience init(
        items: [Any],
        selectedIndex: Int = 0,
        selectionChangedAction: Selector,
        onTarget target: Any?
    ) {
        self.init(items: items)
        self.selectedSegmentIndex = selectedIndex
        self.addTarget(target, action: selectionChangedAction, for: .valueChanged)
    }
}
