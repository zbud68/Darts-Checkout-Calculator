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
	var thirdMultiplier: String!
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

	var firstMultiplier = ""
	var secondMultiplier = ""
	var thirdMultiplier = ""

	var first: Int = 20
	var second: Int = 20
	var third: Int = 25

	var checkOuts: [checkOut] = []

	@IBOutlet weak var CurrentScore_Input: UITextField!
	@IBOutlet weak var FirstDart_Output: UILabel!
	@IBOutlet weak var SecondDart_Output: UILabel!
	@IBOutlet weak var ThirdDart_Output: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		setupPickerData()
		setupCheckOuts()

		let toolBar = UIToolbar()
		toolBar.barStyle = UIBarStyle.default
		toolBar.isTranslucent = true
		toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
		toolBar.sizeToFit()

		let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: Selector(("donePicker")))
		let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)

		toolBar.setItems([spaceButton, doneButton], animated: false)
		toolBar.isUserInteractionEnabled = true

		picker.delegate = self
		picker.dataSource = self

		picker.selectRow(1, inComponent: 0, animated: false)
		picker.selectRow(7, inComponent: 1, animated: false)
		thirdComponent.removeAll()
		thirdComponent.append(0)
		picker.selectRow(0, inComponent: 2, animated: false)

		CurrentScore_Input.inputView = picker
		CurrentScore_Input.inputAccessoryView = toolBar
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

	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		if component == 0 {
			return String(firstComponent[row])
		} else if component == 1 {
			return String(secondComponent[row])
		} else {
			return String(thirdComponent[row])
		}
	}

	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		currentScore = 0
		if pickerView.selectedRow(inComponent: 0) == 0 {
			thirdComponent.removeAll()
			for num in 0...9 {
				thirdComponent.append(num)
			}
			secondComponent.removeAll()
			for num in 4...9 {
				secondComponent.append(num)
			}
		} else {
			if pickerView.selectedRow(inComponent: 0) == 1 {
				thirdComponent.removeAll()
				for num in 0...9 {
					thirdComponent.append(num)
				}
				secondComponent.removeAll()
				for num in 0...7 {
					secondComponent.append(num)
				}
				if pickerView.selectedRow(inComponent: 1) == 7 {
					thirdComponent.removeAll()
					thirdComponent.append(0)
				} else if pickerView.selectedRow(inComponent: 1) == 5 {
					thirdComponent.removeAll()
					for num in 0...8 {
						thirdComponent.append(num)
					}
				} else if pickerView.selectedRow(inComponent: 1) == 6 {
					thirdComponent.removeAll()
					thirdComponent.append(0)
					thirdComponent.append(1)
					thirdComponent.append(4)
					thirdComponent.append(7)
				}
			}
		}
		pickerView.reloadAllComponents()

		let firstPosition = (firstComponent[pickerView.selectedRow(inComponent: 0)] * 100)
		let secondPosition = (secondComponent[pickerView.selectedRow(inComponent: 1)] * 10)
		let thirdPosition = (thirdComponent[pickerView.selectedRow(inComponent: 2)])
		currentScore = firstPosition + secondPosition + thirdPosition
		CurrentScore_Input.text = String(currentScore)

		for checkOut in checkOuts where checkOut.pointsRemaining == currentScore {
			FirstDart_Output.text = "\(checkOut.firstMultiplier!)\(checkOut.firstDart!)"
			SecondDart_Output.text = "\(checkOut.secondMultiplier!)\(checkOut.secondDart!)"
			ThirdDart_Output.text = "\(checkOut.thirdMultiplier!)\(checkOut.thirdDart!)"
		}
	}
}
