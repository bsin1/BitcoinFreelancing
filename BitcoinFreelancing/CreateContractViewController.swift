//
//  CreateContractViewController.swift
//  BitcoinFreelancing
//
//  Created by Balin Sinnott on 1/14/17.
//  Copyright © 2017 Balin Sinnott. All rights reserved.
//

import UIKit


class CreateContractViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let when = DispatchTime.now() + 1 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            print("opening overlay");
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let summaryOverlayViewController = storyboard.instantiateViewController(withIdentifier: "SummaryOverlayViewController") as! SummaryOverlayViewController
                
            summaryOverlayViewController.modalPresentationStyle = UIModalPresentationStyle.custom
            summaryOverlayViewController.transitioningDelegate = self;
            self.present(summaryOverlayViewController, animated: true, completion: nil)

        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        return SummaryOverlayPresentationController(presentedViewController: presented, presenting: presenting)
        
    }
    
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        print("first button pressed")
    }
    
    
    @IBAction func secondButtonPressed(_ sender: Any) {
        print("second button pressed")
        
    }

    @IBAction func thirdButtonPressed(_ sender: Any) {
        
        print("third button pressed")

    }
    
    
}
