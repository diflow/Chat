//
//  SelfConfiguringCell.swift
//  Chat
//
//  Created by ivan on 28.01.2021.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
