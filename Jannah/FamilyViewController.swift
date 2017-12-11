//
//  FamilyViewController.swift
//  Jannah
//
//  Created by Abdelaziz on 12/10/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class FamilyViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet var familyCollectionView: UICollectionView!{
        didSet{
            familyCollectionView.dataSource = self
            familyCollectionView.delegate = self
        }
    }
    
    @IBOutlet var mealsTableView: UITableView! {
        didSet{
            mealsTableView.dataSource = self
            mealsTableView.delegate = self
        }
    }
    
    // MARK:- Private Vars
    
    fileprivate var familyCellReuseIdentifier = "Family Cell Reuse Identifier"
    fileprivate var mealsCellReuseIdentifier = "Meals Cell Reuse Identifier"
    
    
    // MARK:- View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // TODO:- Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK:- Private Methods
    
    private func registerCells(){
        familyCollectionView.register(FamilyCollectionViewCell.self, forCellWithReuseIdentifier: familyCellReuseIdentifier)
    }
    
}


// MARK:- Family Collection View Data Source

extension FamilyViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: familyCellReuseIdentifier, for: indexPath)
        
        return cell
    }
}

// MARK:- Family Collection View Delegate

extension FamilyViewController: UICollectionViewDelegate {
    
}

// MARK:- Family Collection View Flow Layout

extension FamilyViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 65, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}


// MARK:- Meals Table View Data Source

extension FamilyViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Header Title"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: mealsCellReuseIdentifier, for: indexPath)
        return cell
    }
    
    
}


// MARK:- Meals Table View Delegate

extension FamilyViewController: UITableViewDelegate {
    
}



















