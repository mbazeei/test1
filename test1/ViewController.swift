//
//  ViewController.swift
//  test1
//
//  Created by SDB Mobile Team on 9/21/17.
//  Copyright © 2017 SDB Mobile Team. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var menudown : CGFloat? = 0
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var viewShadow: viewX!
    @IBOutlet weak var btnMenu: ButtonX!
    @IBOutlet weak var viewSideMenu: UIView!
    @IBOutlet weak var sideMenuConst: NSLayoutConstraint!

    @IBOutlet weak var lblslideValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewSideMenu.layer.masksToBounds = true
        viewSideMenu.layer.shadowColor = UIColor.red.cgColor
        viewSideMenu.layer.shadowRadius = 10
        
        menudown = self.view.frame.height - self.view1.frame.height + 60
        self.view1.frame.origin.y = self.menudown! + self.view1.frame.height
        UIView.animate(withDuration: 1.2, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
                //self.view1.frame.origin.y = self.view.frame.height - self.view1.frame.height
                self.view1.frame.origin.y = self.menudown!
                self.view.layoutIfNeeded()
        }) { (true) in
            
        }
    }

    @IBAction func btnYouTube(_ sender: UIButton) {
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            self.sideMenuConst.constant = 0
            self.view1.frame.origin.y = self.menudown!
            self.viewShadow.transform = CGAffineTransform.identity
            self.btnMenu.transform = CGAffineTransform.identity
            self.view.layoutIfNeeded()
        }) { (true) in
            
        }

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnWating(_ sender: Any) {
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }
    @IBAction func btnUp(_ sender: Any) {
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            if self.view1.frame.origin.y == self.menudown!
            {
                self.view1.frame.origin.y = self.view.frame.height - self.view1.frame.height + 10
                self.viewShadow.transform = CGAffineTransform(scaleX: 15.5, y: 15.5)
                self.btnMenu.transform = CGAffineTransform(rotationAngle: 9.4)
            }
            else{
                self.view1.frame.origin.y = self.menudown!
                self.viewShadow.transform = CGAffineTransform.identity
                self.btnMenu.transform = CGAffineTransform.identity
            }
            self.view.layoutIfNeeded()
        }) { (true) in
            
        }
    }
}

