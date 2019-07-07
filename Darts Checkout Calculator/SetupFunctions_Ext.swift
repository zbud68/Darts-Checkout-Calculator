//
//  SetupFunctions_Ext.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/27/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
	func setupPickerData() {
		var idx1 = 0
		var idx2 = 0

		for num1 in 0...1 {
			pickerData.append((pickerData?[(num1)])!)
			for num2 in 0...9 {
				pickerData.append((pickerData[(num1))
			}
		}

		for component in 0... {
			for num in 0...9 {
				pickerData.append([[component][num]])
				print("pickerData: \(pickerData[idx1][idx2])")
				idx2 += 1
			}
			print("pickerData: \(pickerData[idx1][idx2])")
			idx1 += 1
		}
		/*
		for num in 40...158 {
			pickerData.append(num)
			print("pickerData: \(pickerData[idx])")
			idx += 1
		}
		pickerData.append(160)
		pickerData.append(161)
		pickerData.append(164)
		pickerData.append(167)
		pickerData.append(170)
*/
	}

	/*func setupCheckOuts() {
		var pointsRemaining = Int(0)
		var firstMultiplier = "T"
		var secondMultiplier = "T"
		var thirdMultiplier = "D"
		var first: Int = 20
		var second: Int = 20
		var third: Int = 25

		for point in 40...170 {
			pointsRemaining = point
			switch point {
			case 40:
				firstMultiplier = "D"
				first = 20
				secondMultiplier = ""
				second = 0
				thirdMultiplier = ""
				third = 0
			case 41:
				firstMultiplier = "S"
				first = 9
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 42:
				firstMultiplier = "S"
				first = 10
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 43:
				firstMultiplier = "S"
				first = 11
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 44:
				firstMultiplier = "S"
				first = 12
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 45:
				firstMultiplier = "S"
				first = 13
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 46:
				firstMultiplier = "S"
				first = 14
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 47:
				firstMultiplier = "S"
				first = 15
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 48:
				firstMultiplier = "S"
				first = 16
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 49:
				firstMultiplier = "S"
				first = 17
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 50:
				firstMultiplier = "S"
				first = 10
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 51:
				firstMultiplier = "S"
				first = 11
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 52:
				firstMultiplier = "S"
				first = 12
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 53:
				firstMultiplier = "S"
				first = 13
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 54:
				firstMultiplier = "S"
				first = 14
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 55:
				firstMultiplier = "S"
				first = 15
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 56:
				firstMultiplier = "S"
				first = 16
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 57:
				firstMultiplier = "S"
				first = 17
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 58:
				firstMultiplier = "S"
				first = 18
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 59:
				firstMultiplier = "S"
				first = 19
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 60:
				firstMultiplier = "S"
				first = 20
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 61:
				firstMultiplier = "S"
				first = 25
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
			}
			*/
}
