//
//  ViewController.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/24/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

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
	var backGround: SKSpriteNode!
	var dartBoard: SKSpriteNode!

	var single20: SKSpriteNode!
	var single19: SKSpriteNode!
	var single18: SKSpriteNode!
	var single17: SKSpriteNode!
	var single16: SKSpriteNode!
	var single15: SKSpriteNode!
	var single14: SKSpriteNode!
	var single13: SKSpriteNode!
	var single12: SKSpriteNode!
	var single11: SKSpriteNode!
	var single10: SKSpriteNode!
	var single9: SKSpriteNode!
	var single8: SKSpriteNode!
	var single7: SKSpriteNode!
	var single6: SKSpriteNode!
	var single5: SKSpriteNode!
	var single4: SKSpriteNode!
	var single3: SKSpriteNode!
	var single2: SKSpriteNode!
	var single1: SKSpriteNode!
	var double20: SKSpriteNode!
	var double19: SKSpriteNode!
	var double18: SKSpriteNode!
	var double17: SKSpriteNode!
	var double16: SKSpriteNode!
	var double15: SKSpriteNode!
	var double14: SKSpriteNode!
	var double13: SKSpriteNode!
	var double12: SKSpriteNode!
	var double11: SKSpriteNode!
	var double10: SKSpriteNode!
	var double9: SKSpriteNode!
	var double8: SKSpriteNode!
	var double7: SKSpriteNode!
	var double6: SKSpriteNode!
	var double5: SKSpriteNode!
	var double4: SKSpriteNode!
	var double3: SKSpriteNode!
	var double2: SKSpriteNode!
	var double1: SKSpriteNode!
	var triple20: SKSpriteNode!
	var triple19: SKSpriteNode!
	var triple18: SKSpriteNode!
	var triple17: SKSpriteNode!
	var triple16: SKSpriteNode!
	var triple15: SKSpriteNode!
	var triple14: SKSpriteNode!
	var triple13: SKSpriteNode!
	var triple12: SKSpriteNode!
	var triple11: SKSpriteNode!
	var triple10: SKSpriteNode!
	var triple9: SKSpriteNode!
	var triple8: SKSpriteNode!
	var triple7: SKSpriteNode!
	var triple6: SKSpriteNode!
	var triple5: SKSpriteNode!
	var triple4: SKSpriteNode!
	var triple3: SKSpriteNode!
	var triple2: SKSpriteNode!
	var triple1: SKSpriteNode!
	var single25: SKSpriteNode!
	var double25: SKSpriteNode!

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

	var gameScene: SKScene!

	override func viewDidLoad() {
		super.viewDidLoad()

		if let GameScene = SKScene(fileNamed: "DartBoard.sks") {
			gameScene = GameScene
		} else {
			print("gamescene not found")
		}

		if let BackGround = gameScene.childNode(withName: "BackGround") {
			backGround = BackGround as? SKSpriteNode
		} else {
			print("background not found")
		}

		if let DartBoard = backGround.childNode(withName: "DartBoard") {
			dartBoard = DartBoard as? SKSpriteNode
		} else {
			print("dartboard not found")
		}

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
