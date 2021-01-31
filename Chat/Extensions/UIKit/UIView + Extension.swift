//
//  UIView + Extension.swift
//  Chat
//
//  Created by ivan on 31.01.2021.
//

import UIKit

extension UIView {
    
    func applyGradients(cornerRadius: CGFloat) {
        
        self.backgroundColor = nil
        self.layoutIfNeeded()
        let gradientView = GradientView(from: .topTrailing, to: .bottomLeading, startColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), endColor: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        
        if let gradientLayer = gradientView.layer.sublayers?.first as? CAGradientLayer {
            gradientLayer.frame = self.bounds
            gradientLayer.cornerRadius = cornerRadius
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
}
