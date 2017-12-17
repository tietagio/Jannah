//
//  MealViewController.swift
//  Jannah
//
//  Created by Abdelaziz on 12/17/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {

    // MARK:- Private Vars
    
    private lazy var scrollView: UIScrollView = {
        let frm = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let sv = UIScrollView(frame: frm)
        return sv
    }()
    
    private let headerView = MHeaderView()
    private let mediaView = MMediaView()
    private let ingredientsTableView = MTableView()
    private let preparationsTableView = MTableView()
    
    
    // MARK:- View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiPrepare()
    }
    
    // MARK:- Private Methods

    private func uiPrepare(){
        
        let gapSizeFromSuperView: CGFloat = -40
        let headerViewHeight: CGFloat = 40
        let mediaViewHeight: CGFloat = 280
        let ingredientTableViewHeight: CGFloat = 400
        let preparationsTableViewHeight: CGFloat = 400
        let totalScrollHeight = headerViewHeight + mediaViewHeight + ingredientTableViewHeight + preparationsTableViewHeight + 100
        
      
        scrollView.contentSize = CGSize(width: view.frame.width, height: totalScrollHeight)
        view.addSubview(scrollView)
        
        // Header View
    
        scrollView.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: headerViewHeight).isActive = true
        headerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: gapSizeFromSuperView).isActive = true
        headerView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        // Media View
        
        scrollView.addSubview(mediaView)
        mediaView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10).isActive = true
        mediaView.heightAnchor.constraint(equalToConstant: mediaViewHeight).isActive = true
        mediaView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: gapSizeFromSuperView).isActive = true
        mediaView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.addSubview(ingredientsTableView)
        ingredientsTableView.topAnchor.constraint(equalTo: mediaView.bottomAnchor, constant: 10).isActive = true
        ingredientsTableView.leadingAnchor.constraint(equalTo: mediaView.leadingAnchor).isActive = true
        ingredientsTableView.heightAnchor.constraint(equalToConstant: ingredientTableViewHeight).isActive = true
        ingredientsTableView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: gapSizeFromSuperView).isActive = true
        
        scrollView.addSubview(preparationsTableView)
        preparationsTableView.topAnchor.constraint(equalTo: ingredientsTableView.bottomAnchor, constant: 10).isActive = true
        preparationsTableView.leadingAnchor.constraint(equalTo: mediaView.leadingAnchor).isActive = true
        preparationsTableView.heightAnchor.constraint(equalToConstant: preparationsTableViewHeight).isActive = true
        preparationsTableView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: gapSizeFromSuperView).isActive = true
        
    }
    
    
}








