//
//  SetupFunctions_Ext.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/27/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

extension ViewController {
	func setupPickerData() {
		for num in 0...1 {
			firstComponent.append(num)
		}
		for num in 0...7 {
			secondComponent.append(num)
		}
		for num in 0...9 {
			thirdComponent.append(num)
		}
	}

	func setupCheckOuts() {
		var pointsRemaining = Int(0)
		var firstMultiplier = "T"
		var secondMultiplier = "T"
		var thirdMultiplier = ""
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
				third = 0
			case 62:
				firstMultiplier = "T"
				first = 10
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 63:
				firstMultiplier = "T"
				first = 13
				secondMultiplier = "D"
				second = 12
				thirdMultiplier = ""
				third = 0
			case 64:
				firstMultiplier = "T"
				first = 16
				secondMultiplier = "D"
				second = 8
				thirdMultiplier = ""
				third = 0
			case 65:
				firstMultiplier = "S"
				first = 25
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 66:
				firstMultiplier = "T"
				first = 10
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 67:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 8
				thirdMultiplier = ""
				third = 0
			case 68:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 4
				thirdMultiplier = ""
				third = 0
			case 69:
				firstMultiplier = "T"
				first = 11
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 70:
				firstMultiplier = "T"
				first = 10
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 71:
				firstMultiplier = "T"
				first = 13
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 72:
				firstMultiplier = "T"
				first = 12
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 73:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 8
				thirdMultiplier = ""
				third = 0
			case 74:
				firstMultiplier = "T"
				first = 14
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 75:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 12
				thirdMultiplier = ""
				third = 0
			case 76:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 8
				thirdMultiplier = ""
				third = 0
			case 77:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 10
				thirdMultiplier = ""
				third = 0
			case 78:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "D"
				second = 12
				thirdMultiplier = ""
				third = 0
			case 79:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 14
				thirdMultiplier = ""
				third = 0
			case 80:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 10
				thirdMultiplier = ""
				third = 0
			case 81:
				firstMultiplier = "T"
				first = 15
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 82:
				firstMultiplier = "T"
				first = 14
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 83:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 84:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 12
				thirdMultiplier = ""
				third = 0
			case 85:
				firstMultiplier = "T"
				first = 15
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 86:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 87:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 88:
				firstMultiplier = "T"
				first = 16
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 89:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 90:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 91:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 92:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 16
				thirdMultiplier = ""
				third = 0
			case 93:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 94:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 95:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 19
				thirdMultiplier = ""
				third = 0
			case 96:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 18
				thirdMultiplier = ""
				third = 0
			case 97:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 98:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 19
				thirdMultiplier = ""
				third = 0
			case 99:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 10
				thirdMultiplier = "D"
				third = 16
			case 100:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "D"
				second = 20
				thirdMultiplier = ""
				third = 0
			case 101:
				firstMultiplier = "T"
				first = 17
				secondMultiplier = "D"
				second = 25
				thirdMultiplier = ""
				third = 0
			case 102:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 10
				thirdMultiplier = "D"
				third = 16
			case 103:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 14
				thirdMultiplier = "D"
				third = 16
			case 104:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "S"
				second = 18
				thirdMultiplier = "D"
				third = 16
			case 105:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 13
				thirdMultiplier = "D"
				third = 16
			case 106:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 14
				thirdMultiplier = "D"
				third = 16
			case 107:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 10
				thirdMultiplier = "D"
				third = 20
			case 108:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 16
				thirdMultiplier = "D"
				third = 16
			case 109:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 10
				thirdMultiplier = "D"
				third = 16
			case 110:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 10
				thirdMultiplier = "D"
				third = 20
			case 111:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 11
				thirdMultiplier = "D"
				third = 20
			case 112:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 12
				thirdMultiplier = "D"
				third = 20
			case 113:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 16
				thirdMultiplier = "D"
				third = 20
			case 114:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 14
				thirdMultiplier = "D"
				third = 20
			case 115:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 18
				thirdMultiplier = "D"
				third = 20
			case 116:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 16
				thirdMultiplier = "D"
				third = 20
			case 117:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 17
				thirdMultiplier = "D"
				third = 20
			case 118:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 18
				thirdMultiplier = "D"
				third = 20
			case 119:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 12
				thirdMultiplier = "D"
				third = 25
			case 120:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 20
				thirdMultiplier = "D"
				third = 20
			case 121:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 11
				thirdMultiplier = "D"
				third = 25
			case 122:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "S"
				second = 18
				thirdMultiplier = "D"
				third = 25
			case 123:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 16
				thirdMultiplier = "D"
				third = 25
			case 124:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 14
				thirdMultiplier = "D"
				third = 25
			case 125:
				firstMultiplier = "D"
				first = 25
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 12
			case 126:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "S"
				second = 19
				thirdMultiplier = "D"
				third = 25
			case 127:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 8
			case 128:
				firstMultiplier = "T"
				first = 18
				secondMultiplier = "T"
				second = 14
				thirdMultiplier = "D"
				third = 16
			case 129:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "T"
				second = 12
				thirdMultiplier = "D"
				third = 18
			case 130:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "S"
				second = 20
				thirdMultiplier = "D"
				third = 25
			case 131:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 13
				thirdMultiplier = "D"
				third = 16
			case 132:
				firstMultiplier = "D"
				first = 25
				secondMultiplier = "T"
				second = 14
				thirdMultiplier = "D"
				third = 20
			case 133:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 8
			case 134:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 14
				thirdMultiplier = "D"
				third = 16
			case 135:
				firstMultiplier = "D"
				first = 25
				secondMultiplier = "T"
				second = 15
				thirdMultiplier = "D"
				third = 20
			case 136:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 8
			case 137:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 10
			case 138:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 18
				thirdMultiplier = "D"
				third = 12
			case 139:
				firstMultiplier = "T"
				first = 19
				secondMultiplier = "T"
				second = 14
				thirdMultiplier = "D"
				third = 20
			case 140:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 10
			case 141:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 15
				thirdMultiplier = "D"
				third = 18
			case 142:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 14
				thirdMultiplier = "D"
				third = 20
			case 143:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 16
			case 144:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 12
			case 145:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 15
				thirdMultiplier = "D"
				third = 20
			case 146:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 18
				thirdMultiplier = "D"
				third = 16
			case 147:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 18
			case 148:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 16
				thirdMultiplier = "D"
				third = 20
			case 149:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 16
			case 150:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 18
				thirdMultiplier = "D"
				third = 18
			case 151:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 20
			case 152:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 16
			case 153:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 18
			case 154:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 18
				thirdMultiplier = "D"
				third = 20
			case 155:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 19
			case 156:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 18
			case 157:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 20
			case 158:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 19
			case 160:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 20
			case 161:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 17
				thirdMultiplier = "D"
				third = 25
			case 164:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 18
				thirdMultiplier = "D"
				third = 25
			case 167:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 19
				thirdMultiplier = "D"
				third = 25
			case 170:
				firstMultiplier = "T"
				first = 20
				secondMultiplier = "T"
				second = 20
				thirdMultiplier = "D"
				third = 25
			default:
				firstMultiplier = ""
				first = 0
				secondMultiplier = ""
				second = 0
				thirdMultiplier = ""
				third = 0
				break
			}
			var currentCheckOut = checkOut(pointsRemaining: pointsRemaining)
			currentCheckOut.firstMultiplier = firstMultiplier
			currentCheckOut.firstDart = first
			currentCheckOut.secondMultiplier = secondMultiplier
			currentCheckOut.secondDart = second
			currentCheckOut.thirdMultiplier = thirdMultiplier
			currentCheckOut.thirdDart = third
			checkOuts.append(currentCheckOut)
		}
	}

	func setupGameScene() {
		if let Single20 = dartBoard.childNode(withName: "Single20") {
			single20 = Single20 as? SKSpriteNode
		} else {
			print("Single20 not found")
		}

		if let Double20 = dartBoard.childNode(withName: "Double20") {
			double20 = Double20 as? SKSpriteNode
		} else {
			print("Double20 not found")
		}

		if let Triple20 = dartBoard.childNode(withName: "Triple20") {
			triple20 = Triple20 as? SKSpriteNode
		} else {
			print("Triple20 not found")
		}

		if let Single19 = dartBoard.childNode(withName: "Single19") {
			single19 = Single19 as? SKSpriteNode
		} else {
			print("Single19 not found")
		}

		if let Double19 = dartBoard.childNode(withName: "Double19") {
			double19 = Double19 as? SKSpriteNode
		} else {
			print("Double19 not found")
		}

		if let Triple19 = dartBoard.childNode(withName: "Triple19") {
			triple19 = Triple19 as? SKSpriteNode
		} else {
			print("Triple not found")
		}

		if let Single18 = dartBoard.childNode(withName: "Single18") {
			single18 = Single18 as? SKSpriteNode
		} else {
			print("Single18 not found")
		}

		if let Double18 = dartBoard.childNode(withName: "Double18") {
			double18 = Double18 as? SKSpriteNode
		} else {
			print("Double18 not found")
		}

		if let Triple18 = dartBoard.childNode(withName: "Triple18") {
			triple18 = Triple18 as? SKSpriteNode
		} else {
			print("Triple18 not found")
		}

		if let Single17 = dartBoard.childNode(withName: "Single17") {
			single17 = Single17 as? SKSpriteNode
		} else {
			print("Single17 not found")
		}

		if let Double17 = dartBoard.childNode(withName: "Double17") {
			double17 = Double17 as? SKSpriteNode
		} else {
			print("Double17 not found")
		}

		if let Triple17 = dartBoard.childNode(withName: "Triple17") {
			triple17 = Triple17 as? SKSpriteNode
		} else {
			print("Triple17 not found")
		}


	}
}
