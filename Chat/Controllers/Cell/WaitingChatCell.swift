//
//  WaitingChatCell.swift
//  Chat
//
//  Created by ivan on 28.01.2021.
//

import UIKit

class WaitingChatCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "WaitingCharCell"
    
    let friendImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .brown
        setupConstraints()
        
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
    }
    
    func configure(with value: MChat) {
        friendImageView.image = UIImage(named: value.userImageString)
    }
    
    private func setupConstraints() {
        
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(friendImageView)
        
        NSLayoutConstraint.activate([
            friendImageView.topAnchor.constraint(equalTo: self.topAnchor),
            friendImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            friendImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


// MARK: - SwiftUI
import SwiftUI

struct WaitingChatProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let tabBarVC = MainTabBarController()
        
        func makeUIViewController(context: Context) -> some UITabBarController {
            return tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}

