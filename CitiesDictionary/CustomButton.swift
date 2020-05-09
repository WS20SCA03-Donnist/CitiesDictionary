//
//  CustomButton.swift
//  CitiesDictionary
//
//  Created by Donavin Watson on 5/8/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
	
	override func draw(_ rect: CGRect) {
		
		
		// Drawing code
		super.draw(rect);
		
		if layer.borderWidth <= 0.0 {
			layer.borderWidth = 1.0;   //default is 0.0
			layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1);
			layer.shadowOffset = CGSize (width: 0, height: 2);
			layer.shadowOpacity = 0.5;
			layer.shadowRadius = 2;
			
			
		}
		
		//If the BorderButton has a titleLabel,
		//make the border the same color as the titleLabel.
		
		let color: UIColor = titleLabel == nil ? .black : titleLabel!.textColor;
		layer.borderColor = color.cgColor;   //.borderColor is CGColor?, not UIColor
	}
	
}
