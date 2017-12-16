//
//  KitchenCollectionViewCell.swift
//  Jannah
//
//  Created by Abdelaziz on 12/11/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class KitchenCollectionViewCell: UICollectionViewCell {
    
    
    // MARK:- Private Vars
    
    private var avatarSize: CGFloat = 40
    
    private lazy var avatarImageView: UIImageView = {
        let image = UIImage(named: "avatar1")
        let aiv = UIImageView(image: image)
        aiv.translatesAutoresizingMaskIntoConstraints = false
        aiv.contentMode = .scaleAspectFill
        aiv.clipsToBounds = true
        aiv.layer.cornerRadius = avatarSize / 2
        return aiv
    }()
    
    private lazy var nameLabel: UILabel = {
       let nl = UILabel()
        nl.translatesAutoresizingMaskIntoConstraints  = false
        nl.text = "Jannah"
        return nl
    }()
    
    
    private lazy var mealImageView: UIImageView = {
        let img = UIImage(named: "sunset")
        let miv = UIImageView(image: img)
        miv.translatesAutoresizingMaskIntoConstraints = false
        miv.contentMode = .scaleAspectFill
        miv.clipsToBounds = true
        return miv
    }()
    
    private var likeImageView: UIImageView = {
        let img = UIImage(named: "heart")
        let imgView = UIImageView(image: img)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.isUserInteractionEnabled = true
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private var commentsImageView: UIImageView = {
        let img = UIImage(named: "chat")
        let imgView = UIImageView(image: img)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.isUserInteractionEnabled = true
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private var shareImageView: UIImageView = {
        let img = UIImage(named: "cursor")
        let imgView = UIImageView(image: img)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.isUserInteractionEnabled = true
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private var bookmarkImageView: UIImageView = {
        let img = UIImage(named: "bookmark")
        let imgView = UIImageView(image: img)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.isUserInteractionEnabled = true
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
    
    private var titleButton: UIButton = {
        let bttn = UIButton(type: .system)
        bttn.translatesAutoresizingMaskIntoConstraints = false
        bttn.setTitle("Chicken with nice salad ingredients specific for you", for: .normal)
        bttn.titleLabel?.lineBreakMode = .byWordWrapping
        return bttn
    }()
    
    private var timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "12 hours ago"
        label.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    // MARK:- Private Methods
    
    private func prepareUI(){
        backgroundColor = .white
        
        addSubview(avatarImageView)
        avatarImageView.widthAnchor.constraint(equalToConstant: avatarSize).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: avatarSize).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        
        addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 5).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor).isActive = true
        
        addSubview(timeLabel)
        timeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        timeLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor).isActive = true
        
        addSubview(mealImageView)
        mealImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10).isActive = true
        mealImageView.widthAnchor.constraint(equalTo: self.widthAnchor , constant: -40).isActive = true
        mealImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        mealImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        addSubview(likeImageView)
        likeImageView.leadingAnchor.constraint(equalTo: mealImageView.leadingAnchor, constant: 20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: mealImageView.bottomAnchor, constant: 20).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        likeImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(commentsImageView)
        commentsImageView.leadingAnchor.constraint(equalTo: likeImageView.trailingAnchor, constant: 20).isActive = true
        commentsImageView.topAnchor.constraint(equalTo: mealImageView.bottomAnchor, constant: 20).isActive = true
        commentsImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        commentsImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(shareImageView)
        shareImageView.leadingAnchor.constraint(equalTo: commentsImageView.trailingAnchor, constant: 20).isActive = true
        shareImageView.topAnchor.constraint(equalTo: mealImageView.bottomAnchor, constant: 20).isActive = true
        shareImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        shareImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(bookmarkImageView)
        bookmarkImageView.leadingAnchor.constraint(equalTo: mealImageView.trailingAnchor, constant: -40).isActive = true
        bookmarkImageView.topAnchor.constraint(equalTo: mealImageView.bottomAnchor, constant: 20).isActive = true
        bookmarkImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        bookmarkImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(titleButton)
        titleButton.leadingAnchor.constraint(equalTo: mealImageView.leadingAnchor, constant: 10).isActive = true
        titleButton.trailingAnchor.constraint(equalTo: mealImageView.trailingAnchor, constant: -10).isActive = true
        titleButton.topAnchor.constraint(equalTo: likeImageView.bottomAnchor, constant: 5).isActive = true
        titleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
