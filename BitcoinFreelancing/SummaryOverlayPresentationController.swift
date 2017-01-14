//
//  SummaryOverlayPresentationController.swift
//  BitcoinFreelancing
//
//  Created by Balin Sinnott on 1/14/17.
//  Copyright © 2017 Balin Sinnott. All rights reserved.
//

import UIKit


class SummaryOverlayPresentationController: UIPresentationController {
    
    
    override var frameOfPresentedViewInContainerView: CGRect{
        
        get {
            if let width = self.containerView?.bounds.size.width, let height = self.containerView?.bounds.size.height {
                return CGRect(x: width * 0.9, y: 0, width: width * 0.1, height: height)
            } else {
                return CGRect(x: 0, y: 0, width: 100, height: 100)
            }
        }
    }
    
    
}
