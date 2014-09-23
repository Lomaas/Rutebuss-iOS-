//
//  PlaceHolderUIView.swift
//  Rutebuss
//
//  Created by Simen Johannessen on 06/09/14.
//  Copyright (c) 2014 Simen Johannessen. All rights reserved.
//
import UIKit

extension UIView {
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle = NSBundle.mainBundle()) -> UIView! {
        return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
}

class PlaceHolderUIView: UIView {
    
}
