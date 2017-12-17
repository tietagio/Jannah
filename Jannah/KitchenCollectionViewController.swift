//
//  KitchenCollectionViewController.swift
//  Jannah
//
//  Created by Abdelaziz on 12/11/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class KitchenCollectionViewController: UICollectionViewController {
    
    
    // MARK:- Private Vars
    
    private lazy var menuViewController: UIViewController? = {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Menu View Controller")
        return vc
    }()

    private var isMenuOpen = false
    private let menuWidth: CGFloat = 280
    private let kitchenReuseIdentifier = "Kitchen Collection View Cell"
    
    
    // MARK:- Outlets
    
    @IBOutlet var menuBarButton: UIBarButtonItem!
    
    
    
    // MARK:- Actions
    
    @IBAction func toggleMenu(_ sender: UIBarButtonItem) {
        if isMenuOpen {
            menuBarButton.image = UIImage(named: "menu")
            isMenuOpen = false
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {[weak self] in
                self?.menuViewController?.view.center.x = -(self?.menuWidth ?? 250) / 2
            })
        }else{
            menuBarButton.image = UIImage(named: "cancel")
            isMenuOpen = true
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {[weak self] in
                self?.menuViewController?.view.center.x = (self?.menuWidth ?? 250) / 2
            })
        }
    }
    
    @IBAction func SearchBarButtonTapped(_ sender: UIBarButtonItem) {
        let searchViewController = UISearchController(searchResultsController: UITableViewController(style: .plain))
        present(searchViewController, animated: true)
    }
    
    
    
    
    // MARK:- View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = true

        // Register cell classes
        self.collectionView!.register(KitchenCollectionViewCell.self, forCellWithReuseIdentifier: kitchenReuseIdentifier)

        // Add Child View Controllers
         self.childViewControllersPrepare(menuViewController)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // TODO:- Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    // MARK:- Private Methods
    
    private func childViewControllersPrepare(_ viewControllerToAdd: UIViewController?){
        if let vc = viewControllerToAdd {
            vc.view.frame = CGRect(x: 0, y: 0, width: menuWidth, height: self.view.frame.height)
            vc.view.center.x = -(self.menuWidth) / 2
            vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.addChildViewController(vc)
            self.view.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
        }
    }
    
}



extension KitchenCollectionViewController {
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kitchenReuseIdentifier, for: indexPath)
        
        // Configure the cell
        return cell
    }

}


extension KitchenCollectionViewController {
    
    // MARK:- UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TOOD: Prepare Destination View Controller
        performSegue(withIdentifier: "from kitchen to meal segue", sender: self)
    }
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}

extension KitchenCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 480)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}




























