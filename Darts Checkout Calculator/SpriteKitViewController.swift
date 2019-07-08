//
//  SpriteKitViewController.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 7/7/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import UIKit
import SpriteKit

class SpriteKitViewController: UIViewController {

	var freeForm = UIBezierPath()
	var singleOne: CGPath!

    override func viewDidLoad() {
        super.viewDidLoad()
		setupDartBoard()

        // Do any additional setup after loading the view.
    }

	func setupDartBoard() {
		freeForm.move(to: CGPoint(x: 2.5, y: 13))
		freeForm.addLine(to: CGPoint(x: 6, y: 10.5))
		freeForm.addLine(to: CGPoint(x: 37.5, y: 71))
		freeForm.addLine(to: CGPoint(x: 14, y: 77.5))
		freeForm.addLine(to: CGPoint(x: 2.5, y: 13))

		singleOne = freeForm.cgPath
	}
}
