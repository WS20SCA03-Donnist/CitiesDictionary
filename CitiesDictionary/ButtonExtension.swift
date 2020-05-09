//
//  ButtonExtension.swift
//  CitiesDictionary
//
//  Created by Donavin Watson on 5/8/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

extension UIButton {
	
	
	func flash() {
		
		let flash = CABasicAnimation(keyPath: "opacity");
		flash.duration = 1.0;
		flash.fromValue = 1;
		flash.toValue = 0.1;
		flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut);
		flash.autoreverses = true;
		flash.repeatCount = 9999;
		
		layer.add(flash, forKey: nil);
	}
	
}
