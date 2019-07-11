//
//  ViewController.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/24/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import UIKit
import SpriteKit

struct Dart {
	var multiplierLabel: String!
	var pointValue: Int!
	var boardLocation: SKReferenceNode?
}

struct checkOut {
	var pointsRemaining: Int!
	var firstDart: Dart!
	var secondDart: Dart!
	var thirdDart: Dart!

	init(pointsRemaining: Int, firstDart: Dart, secondDart: Dart, thirdDart: Dart) {
		self.pointsRemaining = pointsRemaining
		self.firstDart = firstDart
		self.secondDart = secondDart
		self.thirdDart = thirdDart
	}
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	var backGround: SKSpriteNode!
	var dartBoard: SKSpriteNode!

	var single20: SKReferenceNode!
	var single19: SKReferenceNode!
	var single18: SKReferenceNode!
	var single17: SKReferenceNode!
	var single16: SKReferenceNode!
	var single15: SKReferenceNode!
	var single14: SKReferenceNode!
	var single13: SKReferenceNode!
	var single12: SKReferenceNode!
	var single11: SKReferenceNode!
	var single10: SKReferenceNode!
	var single9: SKReferenceNode!
	var single8: SKReferenceNode!
	var single7: SKReferenceNode!
	var single6: SKReferenceNode!
	var single5: SKReferenceNode!
	var single4: SKReferenceNode!
	var single3: SKReferenceNode!
	var single2: SKReferenceNode!
	var single1: SKReferenceNode!
	var double20: SKReferenceNode!
	var double19: SKReferenceNode!
	var double18: SKReferenceNode!
	var double17: SKReferenceNode!
	var double16: SKReferenceNode!
	var double15: SKReferenceNode!
	var double14: SKReferenceNode!
	var double13: SKReferenceNode!
	var double12: SKReferenceNode!
	var double11: SKReferenceNode!
	var double10: SKReferenceNode!
	var double9: SKReferenceNode!
	var double8: SKReferenceNode!
	var double7: SKReferenceNode!
	var double6: SKReferenceNode!
	var double5: SKReferenceNode!
	var double4: SKReferenceNode!
	var double3: SKReferenceNode!
	var double2: SKReferenceNode!
	var double1: SKReferenceNode!
	var triple20: SKReferenceNode!
	var triple19: SKReferenceNode!
	var triple18: SKReferenceNode!
	var triple17: SKReferenceNode!
	var triple16: SKReferenceNode!
	var triple15: SKReferenceNode!
	var triple14: SKReferenceNode!
	var triple13: SKReferenceNode!
	var triple12: SKReferenceNode!
	var triple11: SKReferenceNode!
	var triple10: SKReferenceNode!
	var triple9: SKReferenceNode!
	var triple8: SKReferenceNode!
	var triple7: SKReferenceNode!
	var triple6: SKReferenceNode!
	var triple5: SKReferenceNode!
	var triple4: SKReferenceNode!
	var triple3: SKReferenceNode!
	var triple2: SKReferenceNode!
	var triple1: SKReferenceNode!
	var single25: SKReferenceNode!
	var double25: SKReferenceNode!

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
	@IBOutlet weak var DartBoardLocation_Output: SKView!

	var gameScene: SKScene!

	var doneButton: SKSpriteNode!

	var dartLocations: [SKReferenceNode] = []

	var touchLocation: CGPoint!

	override func viewDidLoad() {
		super.viewDidLoad()

		DartBoardLocation_Output.alpha = 0

		setupGameScene()
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

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		if let touch = touches.first {
			touchLocation = touch.location(in: backGround)
		}

		if doneButton.contains(touchLocation) {
			DartBoardLocation_Output.alpha = 0
			DartBoardLocation_Output.isHidden = true
		}
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

		for checkOut in checkOuts {
			let firstLocation = checkOut.firstDart.boardLocation
			let secondLocation = checkOut.secondDart.boardLocation
			let thirdLocation = checkOut.thirdDart.boardLocation

			firstLocation?.alpha = 0
			secondLocation?.alpha = 0
			thirdLocation?.alpha = 0
		}

		for checkOut in checkOuts where checkOut.pointsRemaining == currentScore {
			checkOut.firstDart.boardLocation?.alpha = 1
			checkOut.secondDart.boardLocation?.alpha = 1
			checkOut.thirdDart.boardLocation?.alpha = 1
			FirstDart_Output.text = "\(checkOut.firstDart.multiplierLabel!)\(checkOut.firstDart.pointValue!)"
			SecondDart_Output.text = "\(checkOut.secondDart.multiplierLabel!)\(checkOut.secondDart.pointValue!)"
			ThirdDart_Output.text = "\(checkOut.thirdDart.multiplierLabel!)\(checkOut.thirdDart.pointValue!)"
		}
	}

	@IBAction func ShowDartLocationButton(_ sender: UIButton) {
		DartBoardLocation_Output.alpha = 1
		DartBoardLocation_Output.backgroundColor = .lightGray
	}

	@objc func donePicker() {
		CurrentScore_Input.resignFirstResponder()
	}
}
