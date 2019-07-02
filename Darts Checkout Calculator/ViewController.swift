//
//  ViewController.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/24/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import Foundation
import UIKit

struct checkOut {
	var pointsRemaining: Int!
	var firstMultiplier: String!
	var firstDart: Int!
	var secondMultiplier: String!
	var secondDart: Int!
	var thirdMultiplier: String = "D"
	var thirdDart: Int!

	init(pointsRemaining: Int, firstMultiplier: String, firstDart: Int, secondMultiplier: String, secondDart: Int, thirdMultiplier: String, thirdDart: Int) {
		self.pointsRemaining = pointsRemaining
		self.firstMultiplier = firstMultiplier
		self.firstDart = firstDart
		self.secondMultiplier = secondMultiplier
		self.secondDart = secondDart
		self.thirdMultiplier = thirdMultiplier
		self.thirdDart = thirdDart
	}
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIGestureRecognizerDelegate {

	var gesture = UIGestureRecognizer()
	var picker = UIPickerView()
	var firstComponent: [Int] = [Int]()
	var secondComponent: [Int] = [Int]()
	var thirdComponent: [Int] = [Int]()
	var currentScore: Int = 0

	@IBOutlet weak var PageControl: UIPageControl!
	@IBOutlet weak var CurrentScore_Input: UITextField!
	@IBOutlet weak var FirstDart_Output: UILabel!
	@IBOutlet weak var SecondDart_Output: UILabel!
	@IBOutlet weak var ThirdDart_Output: UILabel!

	var checkOuts: [checkOut] = []

	override func viewDidLoad() {
		super.viewDidLoad()

		gesture.delegate = self
		picker.delegate = self
		picker.dataSource = self

		setupPickerView()

		setupCheckOuts()
		setupPickerData()
		
	}

	@objc func donePicker() {
		CurrentScore_Input.resignFirstResponder()
	}

	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 3
	}

	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		if component == 0 {
			return firstComponent.count
		} else if component == 1 {
			return secondComponent.count
		} else {
			return thirdComponent.count
		}
	}

	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		currentScore = 0

		let firstPosition = (firstComponent[pickerView.selectedRow(inComponent: 0)] * 100)
		let secondPosition = (secondComponent[pickerView.selectedRow(inComponent: 1)] * 10)
		let thirdPosition = thirdComponent[pickerView.selectedRow(inComponent: 2)]

		currentScore = firstPosition + secondPosition + thirdPosition

		CurrentScore_Input.text = String(currentScore)

		for checkOut in checkOuts {

			if checkOut.pointsRemaining == currentScore {
				FirstDart_Output.text = "\(checkOut.firstMultiplier!)\(checkOut.firstDart!)"
				SecondDart_Output.text = "\(checkOut.secondMultiplier!)\(checkOut.secondDart!)"
				ThirdDart_Output.text = "\(checkOut.thirdMultiplier)\(checkOut.thirdDart!)"
			} else {
				print("No Available Checkout")
			}
		}
	}

	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		if component == 0 {
			return String(firstComponent[row])
		} else if component == 1 {
			return String(secondComponent[row])
		} else {
			return String(thirdComponent[row])
		}
	}

	@IBAction func SwipeGestureRecognizer(_ sender: Any) {
	}
}
