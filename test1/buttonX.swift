//
//  buttonX.swift
//  test1
//
//  Created by SDB Mobile Team on 9/25/17.
//  Copyright © 2017 SDB Mobile Team. All rights reserved.
//

import UIKit
@IBDesignable
class ButtonX : UIButton{
    
    @IBInspectable var radiusButton : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = radiusButton
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var maskToBound : Bool = false {
        didSet{
            self.layer.masksToBounds = maskToBound
        }
    }
    
}
