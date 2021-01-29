//
//  UIViewController + Extension.swift
//  Chat
//
//  Created by ivan on 29.01.2021.
//

import UIKit

extension UIViewController {
    
    func configure<T: SelfConfiguringCell, U: Hashable>(collectionView: UICollectionView, cellType: T.Type, with value: U, for indexPath: IndexPath) -> T {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reuseId, for: indexPath) as? T else { fatalError("Unable \(cellType)") }
        cell.configure(with: value)
        return cell
    }
}
