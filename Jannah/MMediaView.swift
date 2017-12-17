//
//  MMediaView.swift
//  Jannah
//
//  Created by Abdelaziz on 12/17/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class MMediaView: MBaseView {

    // MARK:- Public API
    
    var isVideoPost = false {
        didSet{
            
        }
    }
    
    var image = UIImage() {
        didSet{
            imageView.image = image
        }
    }
    
    // MARK:- Private Vars
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "sunset")
        let iv = UIImageView(image: image)
        iv.isUserInteractionEnabled = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    // MARK:- Private Methods
    
    override func uiPrepare(){
        super.uiPrepare()
        
        addSubview(imageView)
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    }
    
}








