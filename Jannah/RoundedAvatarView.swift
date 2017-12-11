//
//  RoundedAvatarView.swift
//  Jannah
//
//  Created by Abdelaziz on 12/11/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class RoundedAvatarView: UIView {

    // MARK:- Public API
    var image: UIImage? = UIImage(named: "avatar1") {
        didSet{
            avatarImageView.image = image
        }
    }
    
    var viewSize: CGFloat = 75 {
        didSet{
           recalculateUI()
        }
    }
    
    var gapSize: CGFloat = 5 {
        didSet{
            recalculateUI()
        }
    }
    
    var borderWidth: CGFloat = 1  {
        didSet{
            recalculateUI()
        }
    }
    
    var borderColor: UIColor = .black {
        didSet{
            recalculateUI()
        }
    }
    
    
    // Private Vars
    
    private var avatarSize: CGFloat {
        return viewSize - gapSize
    }
    
    private var avatarGap: CGFloat {
        return gapSize / 2
    }
    
    private lazy var avatarImageView: UIImageView = {
        let iv = UIImageView(image: image)
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    // MARK:- Private Methods
    
    private func recalculateUI(){
        self.frame = CGRect(x: 0, y: 0, width: viewSize, height: viewSize)
        self.layer.cornerRadius = viewSize / 2
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        
        avatarImageView.frame = CGRect(x: avatarGap, y: avatarGap , width: avatarSize, height: avatarSize)
        avatarImageView.layer.cornerRadius = avatarSize / 2
    }
    
    private func prepareUI(){
        addSubview(avatarImageView)
        recalculateUI()
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
