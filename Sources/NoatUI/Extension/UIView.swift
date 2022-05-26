//
//  File.swift
//  
//
//  Created by Toan Pham on 5/25/22.
//

import Foundation
import UIKit

public extension UIView{
    func anchor(
        top: NSLayoutYAxisAnchor?,
        bottom: NSLayoutYAxisAnchor?,
        leading: NSLayoutXAxisAnchor?,
        trailing: NSLayoutXAxisAnchor?,
        padding: UIEdgeInsets = .zero,
        size: CGSize = .zero
    ) -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0{
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
        return self
    }
    
    func vstack(
        alignment: UIStackView.Alignment = .fill,
        spacing: CGFloat = .zero,
        subviews: [UIView]
    ) -> UIStackView {
        let stackView = UIStackView.init(arrangedSubviews: subviews)
        stackView.axis = .vertical
        stackView.alignment = alignment
        stackView.spacing = spacing
        self.addSubview(stackView)
        return stackView
    }
    
    func hstack(
        alignment: UIStackView.Alignment = .fill,
        spacing: CGFloat = .zero,
        subviews: [UIView]
    ) -> UIStackView {
        let stackView = UIStackView.init(arrangedSubviews: subviews)
        stackView.axis = .horizontal
        stackView.alignment = alignment
        stackView.spacing = spacing
        self.addSubview(stackView)
        return stackView
    }
}
