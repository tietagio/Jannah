//
//  MTableView.swift
//  Jannah
//
//  Created by Abdelaziz on 12/17/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class MTableView: UITableView {

    // MARK:- Mehods
    
    func uiPrepare(){
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK:- Init
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        uiPrepare()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        uiPrepare()
    }
}
