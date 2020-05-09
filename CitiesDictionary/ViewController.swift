//
//  ViewController.swift
//  CitiesDictionary
//
//  Created by Donavin Watson on 5/6/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

struct TheEightWonders {      //in the file Building.swift
	let name: String;
	let country: String;
	let image: String; //name of image file in Assets.xcassets
	
	
}

let WonderOfTheWorld: [Int: [TheEightWonders]] = [
	16: [TheEightWonders(name: "Great Wall of China",   country: "China",     image: "960x0-0.jpg")
	],
	
	11: [TheEightWonders(name:"Chichen Itza",           country: "Mexico",    image: "960x0-1.jpg")
	],
	
	17: [TheEightWonders(name: "Christ the Redeemer",   country: "Brazil",    image: "960x0-2.jpg")
	],
	
	05: [TheEightWonders(name: "Petra",                 country: "Jordan",    image: "960x0-3.jpg")
	],
	
	08: [TheEightWonders(name: "Taj Mahal",             country: "India",     image: "960x0-4.jpg")
	],
	
	13: [TheEightWonders(name: "The Roman Colosseum",   country: "Italy",     image: "960x0-5.jpg")
	],
	
	11: [TheEightWonders(name: "Machu Picchu",          country: "Peru",      image: "960x0-6.jpg")
	],
	
	18: [TheEightWonders(name: "Great Pyramid of Giza",   country: "Egypt",   image: "960x0-7.jpg")
	]
	
];



class ViewController: UIViewController {
	
	@IBOutlet weak var wonderLabel: UILabel!;
	@IBOutlet weak var wonderImageView: UIImageView!;
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	
	let zone: Int = 16;
	
	
	@IBAction func Prev(_ sender: CustomButton) {
		sender.flash()
	}
	
	@IBAction func Next(_ sender: CustomButton) {
		sender.flash()
	}
	
	@IBAction func textField(_ sender: UITextField) {
		
		
		if let arrayOfPlaces: [TheEightWonders] = WonderOfTheWorld[zone] {   //Do this in textFieldDidEndEditing.
			for place: TheEightWonders in arrayOfPlaces {
				wonderImageView.image = UIImage(named: place.image)
				wonderLabel.text = "\(place.name)";
				
				print("\(place.name) with image file \(place.image).jpg is on \(zone) Street.");
			}
		} else {
			print("\(zone) is not a Wonder of the World");
		}
	}
	
	
}

