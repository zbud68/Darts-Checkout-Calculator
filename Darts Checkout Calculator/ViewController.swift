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

	init(pointsRemaining: Int) {
		self.pointsRemaining = pointsRemaining
	}
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

	var possibleCheckouts: [Int] = []
	var firstDartT20Array: [Int] = []
	var secondDartT20Array: [Int] = []
	var thirdDartD20Array: [Int] = []

	var picker = UIPickerView()
	var firstComponent: [Int] = [Int]()
	var secondComponent: [Int] = [Int]()
	var thirdComponent: [Int] = [Int]()
	var currentScore: Int = 0

	var firstMultiplier = "T"
	var secondMultiplier = "T"
	var thirdMultiplier = "D"
	var first: Int = 20
	var second: Int = 20
	var third: Int = 25

	var pickerData: [(Int, Int, Int)]!

	@IBOutlet weak var CurrentScore_Input: UITextField!
	@IBOutlet weak var FirstDart_Output: UILabel!
	@IBOutlet weak var SecondDart_Output: UILabel!
	@IBOutlet weak var ThirdDart_Output: UILabel!

	var checkOuts: [checkOut] = []

	override func viewDidLoad() {
		super.viewDidLoad()

		picker.delegate = self
		picker.dataSource = self

		setupArrays()
		//setupPickerView()
		setupCheckOuts()
		setupPickerData()
		
	}

	func setupArrays() {
		setupPossibleCheckouts()



		
		var currentDart = checkOut(pointsRemaining: num)
		currentDart.firstMultiplier = "T"
		currentDart.firstDart = 20



		firstDartT20Array = [170, 167, 164, 161, 160, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 138, 137, 136, 134, 133, 131, 130, 127, 124, 121, 120, 118, 117, 116, 114, 112, 111, 110, 108, 106, 105, 102, 100, 98, 96, 92, 84, 80, 76, 68]

		for checkout in possibleCheckouts {

			if firstDartT20Array.contains(checkout) {
				firstMultiplier = "T"
				first = 20
			} else if secondDartT20Array.contains(checkout) {
				secondMultiplier = "T"
				second = 20
			}
		}


		secondDartT20Array = [136, 140, 144, 152, 156, 158, 160, 170]

	}

	func setupPossibleCheckouts() {
		possibleCheckouts.append(contentsOf: 40...158)
		possibleCheckouts.append(160)
		possibleCheckouts.append(161)
		possibleCheckouts.append(164)
		possibleCheckouts.append(167)
		possibleCheckouts.append(170)
	}

	func setupCheckOuts() {

	}

	func setupPickerView() {

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
}
