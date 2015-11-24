//
//  ViewController.swift
//  Sparc Tip
//
//  Created by Corinne Dunston on 11/2/15.
//  Copyright © 2015 CK Sparc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollV: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let tipCalc: View1 = View1(nibName: "View1", bundle: nil)
        let decider: View2 = View2(nibName: "View2", bundle: nil)
        
        
        self.addChildViewController(tipCalc)
        self.scrollV.addSubview(tipCalc.view)
        tipCalc.didMoveToParentViewController(self)
        
        self.addChildViewController(decider)
        self.scrollV.addSubview(decider.view)
        decider.didMoveToParentViewController(self)
        
        
        var deciderFrame: CGRect = decider.view.frame
        deciderFrame.origin.x = self.view.frame.width
        
        decider.view.frame = deciderFrame
        
        self.scrollV.contentSize = CGSizeMake(self.view.frame.width * 2, self.view.frame.size.height)
        
    }

    
    
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

