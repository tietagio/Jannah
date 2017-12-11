//
//  FamilyCollectionViewCell.swift
//  Jannah
//
//  Created by Abdelaziz on 12/11/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class FamilyCollectionViewCell: UICollectionViewCell {
    
    // MARK:- Public API
    var avatarSize:CGFloat = 55 {
        didSet{
            avatarView.viewSize = avatarSize
        }
    }
    
    // MARK:- Private Vars
    
    private lazy var avatarView: RoundedAvatarView = {
        let av = RoundedAvatarView()
        av.viewSize = avatarSize
        av.borderColor = UIColor.yellow
        av.translatesAutoresizingMaskIntoConstraints = false
        return av
    }()
    
    private lazy var nameLabel: UILabel = {
        let nl = UILabel()
        nl.translatesAutoresizingMaskIntoConstraints = false
        nl.text = "Jannah"
        nl.textAlignment = .center
        return nl
    }()
    
    // MARK:- Private Methods
    
    private func prepareUI(){
        
        addSubview(avatarView)
        avatarView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        avatarView.widthAnchor.constraint(equalToConstant: avatarSize).isActive = true
        avatarView.heightAnchor.constraint(equalToConstant: avatarSize).isActive = true
        avatarView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        
        addSubview(nameLabel)
        nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }

    // MARK:- Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepareUI()
    }
}







