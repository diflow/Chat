//
//  Label + Extension.swift
//  Chat
//
//  Created by ivan on 26.01.2021.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
