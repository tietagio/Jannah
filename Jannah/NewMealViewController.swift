//
//  NewMealViewController.swift
//  Jannah
//
//  Created by Abdelaziz on 12/17/17.
//  Copyright © 2017 Abdelaziz Mousa Mohamed. All rights reserved.
//

import UIKit

class NewMealViewController: UIViewController {

    // MARK:- Private Vars
    
    private lazy var stepOneViewController: UIViewController? = {
        let vc = storyboard?.instantiateViewController(withIdentifier: "meal step one view controller")
        return vc
    }()
    
    private lazy var stepTwoViewController: UIViewController? = {
        let vc = storyboard?.instantiateViewController(withIdentifier: "meal step two view controller")
        return vc
    }()
    
    private lazy var stepThreeViewController: UIViewController? = {
        let vc = storyboard?.instantiateViewController(withIdentifier: "meal step three view controller")
        return vc
    }()
    
    private struct StepTitle{
        static var stepOne = "Step 1"
        static var stepTwo = "Step 2"
        static var stepThree = "Step 3"
    }
    
    // MARK:- Outlets
    
    @IBOutlet var containerView: UIView!
    
    
    // MARK:- Actions
    
    @IBAction func dismissPresentedViewController(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func stepsSegmentedControlValueChanged(_ sender: UISegmentedControl) {
        if let currentSelectedSegmented = sender.titleForSegment(at: sender.selectedSegmentIndex) {
        switch currentSelectedSegmented{
        case StepTitle.stepOne:
            stepOneViewController?.view.alpha = 1
            stepTwoViewController?.view.alpha = 0
            stepThreeViewController?.view.alpha = 0
        case StepTitle.stepTwo:
            stepTwoViewController?.view.alpha = 1
            stepOneViewController?.view.alpha = 0
            stepThreeViewController?.view.alpha = 0
            break
        case StepTitle.stepThree:
            stepThreeViewController?.view.alpha = 1
            stepOneViewController?.view.alpha = 0
            stepTwoViewController?.view.alpha = 0
            break
        default:
            break
            }
        }
    }
    
    
    
    // MARK:- View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childViewControllersPrepare([stepThreeViewController,stepTwoViewController,stepOneViewController])
    }
    
    // MARK:- Private Methods
    
    private func childViewControllersPrepare(_ childs: [UIViewController?]){
        for child in childs {
            if let vc = child {
                vc.view.frame = containerView.frame
                addChildViewController(vc)
                vc.view.translatesAutoresizingMaskIntoConstraints = false
                containerView.addSubview(vc.view)
                vc.view.heightAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
                vc.view.widthAnchor.constraint(equalTo: containerView.widthAnchor).isActive = true
                vc.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
                vc.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
                vc.didMove(toParentViewController: self)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
