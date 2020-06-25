//
//  UIView.swift
//  Auto Layout
//
//  Created by Gustavo Fritola on 24/06/20.
//  Copyright © 2020 Gustavo Fritola. All rights reserved.
//

import UIKit

extension UIView {

    func fill (
        top: NSLayoutYAxisAnchor?,
        leading: NSLayoutXAxisAnchor?,
        trailing: NSLayoutXAxisAnchor?,
        bottom: NSLayoutYAxisAnchor?,
        padding: UIEdgeInsets = .zero
        ) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
    }
}
