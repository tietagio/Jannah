//
//  MHeaderView.swift
//  Jannah
//
//  Created by Abdelaziz on 12/17/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class MHeaderView: MBaseView {

    // MARK:- Private Vars
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Two line of title here"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = "45min"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func uiPrepare(){
        super.uiPrepare()
        
        addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        addSubview(timeLabel)
        timeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        timeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}








