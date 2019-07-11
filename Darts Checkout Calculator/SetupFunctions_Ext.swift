//
//  SetupFunctions_Ext.swift
//  Darts Checkout Calculator
//
//  Created by Mark Davis on 6/27/19.
//  Copyright © 2019 Mark Davis. All rights reserved.
//

import UIKit
import SpriteKit

extension ViewController {
	func setupGameScene() {
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

		if let DartBoard = backGround.childNode(withName: "DartBoard") as? SKSpriteNode {
			dartBoard = DartBoard
		} else {
			print("dartboard not found")
		}

		if let Single20 = dartBoard.childNode(withName: "Single20") as? SKReferenceNode {
			single20 = Single20
			single20.name = "S20"
			dartLocations.append(single20)
		} else {
			print("Single20 not found")
		}

		if let Double20 = dartBoard.childNode(withName: "Double20") as? SKReferenceNode {
			double20 = Double20
			double20.name = "D20"
			dartLocations.append(double20)
		} else {
			print("Double20 not found")
		}

		if let Triple20 = dartBoard.childNode(withName: "Triple20") as? SKReferenceNode {
			triple20 = Triple20
			triple20.name = "T20"
			dartLocations.append(triple20)
		} else {
			print("Triple20 not found")
		}

		if let Single19 = dartBoard.childNode(withName: "Single19") as? SKReferenceNode {
			single19 = Single19
			single19.name = "S19"
			dartLocations.append(single19)
		} else {
			print("Single19 not found")
		}

		if let Double19 = dartBoard.childNode(withName: "Double19") as? SKReferenceNode {
			double19 = Double19
			double19.name = "D19"
			dartLocations.append(double19)
		} else {
			print("Double19 not found")
		}

		if let Triple19 = dartBoard.childNode(withName: "Triple19") as? SKReferenceNode {
			triple19 = Triple19
			triple19.name = "T19"
			dartLocations.append(triple19)
		} else {
			print("Triple not found")
		}

		if let Single18 = dartBoard.childNode(withName: "Single18") as? SKReferenceNode {
			single18 = Single18
			single18.name = "S18"
			dartLocations.append(single18)
		} else {
			print("Single18 not found")
		}

		if let Double18 = dartBoard.childNode(withName: "Double18") as? SKReferenceNode {
			double18 = Double18
			double18.name = "D18"
			dartLocations.append(double18)
		} else {
			print("Double18 not found")
		}

		if let Triple18 = dartBoard.childNode(withName: "Triple18") as? SKReferenceNode {
			triple18 = Triple18
			triple18.name = "T18"
			dartLocations.append(triple18)
		} else {
			print("Triple18 not found")
		}

		if let Single17 = dartBoard.childNode(withName: "Single17") as? SKReferenceNode {
			single17 = Single17
			single17.name = "S17"
			dartLocations.append(single17)
		} else {
			print("Single17 not found")
		}

		if let Double17 = dartBoard.childNode(withName: "Double17") as? SKReferenceNode {
			double17 = Double17
			double17.name = "D17"
			dartLocations.append(double17)
		} else {
			print("Double17 not found")
		}

		if let Triple17 = dartBoard.childNode(withName: "Triple17") as? SKReferenceNode {
			triple17 = Triple17
			triple17.name = "T17"
			dartLocations.append(triple17)
		} else {
			print("Triple17 not found")
		}

		if let Single16 = dartBoard.childNode(withName: "Single16") as? SKReferenceNode {
			single16 = Single16
			single16.name = "S16"
			dartLocations.append(single16)
		} else {
			print("Single16 not found")
		}

		if let Double16 = dartBoard.childNode(withName: "Double16") as? SKReferenceNode {
			double16 = Double16
			double16.name = "D16"
			dartLocations.append(double16)
		} else {
			print("Double16 not found")
		}

		if let Triple16 = dartBoard.childNode(withName: "Triple16") as? SKReferenceNode {
			triple16 = Triple16
			triple16.name = "T16"

			dartLocations.append(triple16)
		} else {
			print("Triple16 not found")
		}

		if let Single15 = dartBoard.childNode(withName: "Single15") as? SKReferenceNode {
			single15 = Single15
			single15.name = "S15"
			dartLocations.append(single15)
		} else {
			print("Single15 not found")
		}

		if let Double15 = dartBoard.childNode(withName: "Double15") as? SKReferenceNode {
			double15 = Double15
			double15.name = "D15"
			//double15.value = 15
			dartLocations.append(double15)
		} else {
			print("Double15 not found")
		}

		if let Triple15 = dartBoard.childNode(withName: "Triple15") as? SKReferenceNode {
			triple15 = Triple15
			triple15.name = "T15"
			dartLocations.append(triple15)
		} else {
			print("Triple15 not found")
		}

		if let Single14 = dartBoard.childNode(withName: "Single14") as? SKReferenceNode {
			single14 = Single14
			single14.name = "S14"
			dartLocations.append(single14)
		} else {
			print("Single14 not found")
		}

		if let Double14 = dartBoard.childNode(withName: "Double14") as? SKReferenceNode {
			double14 = Double14
			double14.name = "D14"
			//double14.value = 14
			dartLocations.append(double14)
		} else {
			print("Double14 not found")
		}

		if let Triple14 = dartBoard.childNode(withName: "Triple14") as? SKReferenceNode {
			triple14 = Triple14
			triple14.name = "T14"
			dartLocations.append(triple14)
		} else {
			print("Triple14 not found")
		}

		if let Single13 = dartBoard.childNode(withName: "Single13") as? SKReferenceNode {
			single13 = Single13
			single13.name = "S13"
			dartLocations.append(single13)
		} else {
			print("Single13 not found")
		}

		if let Double13 = dartBoard.childNode(withName: "Double13") as? SKReferenceNode {
			double13 = Double13
			double13.name = "D13"
			dartLocations.append(double13)
		} else {
			print("Double13 not found")
		}

		if let Triple13 = dartBoard.childNode(withName: "Triple13") as? SKReferenceNode {
			triple13 = Triple13
			triple13.name = "T13"
			dartLocations.append(triple13)
		} else {
			print("Triple13 not found")
		}

		if let Single12 = dartBoard.childNode(withName: "Single12") as? SKReferenceNode {
			single12 = Single12
			single12.name = "S12"
			dartLocations.append(single12)
		} else {
			print("Single12 not found")
		}

		if let Double12 = dartBoard.childNode(withName: "Double12") as? SKReferenceNode {
			double12 = Double12
			double12.name = "D12"
			dartLocations.append(double12)
		} else {
			print("Double12 not found")
		}

		if let Triple12 = dartBoard.childNode(withName: "Triple12") as? SKReferenceNode {
			triple12 = Triple12
			triple12.name = "T12"
			dartLocations.append(triple12)
		} else {
			print("Triple12 not found")
		}

		if let Single11 = dartBoard.childNode(withName: "Single11") as? SKReferenceNode {
			single11 = Single11
			single11.name = "S11"
			dartLocations.append(single11)
		} else {
			print("Single11 not found")
		}

		if let Double11 = dartBoard.childNode(withName: "Double11") as? SKReferenceNode {
			double11 = Double11
			double11.name = "D11"
			dartLocations.append(double11)
		} else {
			print("Double11 not found")
		}

		if let Triple11 = dartBoard.childNode(withName: "Triple11") as? SKReferenceNode {
			triple11 = Triple11
			triple11.name = "T11"
			dartLocations.append(triple11)
		} else {
			print("Triple11 not found")
		}

		if let Single10 = dartBoard.childNode(withName: "Single10") as? SKReferenceNode {
			single10 = Single10
			single10.name = "S10"
			dartLocations.append(single10)
		} else {
			print("Single10 not found")
		}

		if let Double10 = dartBoard.childNode(withName: "Double10") as? SKReferenceNode {
			double10 = Double10
			double10.name = "D10"
			dartLocations.append(double10)
		} else {
			print("Double10 not found")
		}

		if let Triple10 = dartBoard.childNode(withName: "Triple10") as? SKReferenceNode {
			triple10 = Triple10
			triple10.name = "T10"
			dartLocations.append(triple10)
		} else {
			print("Triple10 not found")
		}

		if let Single9 = dartBoard.childNode(withName: "Single9") as? SKReferenceNode {
			single9 = Single9
			single9.name = "S9"
			dartLocations.append(single9)
		} else {
			print("Single9 not found")
		}

		if let Double9 = dartBoard.childNode(withName: "Double9") as? SKReferenceNode {
			double9 = Double9
			double9.name = "D9"
			dartLocations.append(double9)
		} else {
			print("Double9 not found")
		}

		if let Triple9 = dartBoard.childNode(withName: "Triple9") as? SKReferenceNode {
			triple9 = Triple9
			triple9.name = "T9"
			dartLocations.append(triple9)
		} else {
			print("Triple9 not found")
		}

		if let Single8 = dartBoard.childNode(withName: "Single8") as? SKReferenceNode {
			single8 = Single8
			single8.name = "S8"
			dartLocations.append(single8)
		} else {
			print("Single8 not found")
		}

		if let Double8 = dartBoard.childNode(withName: "Double8") as? SKReferenceNode {
			double8 = Double8
			double8.name = "D8"
			dartLocations.append(double8)
		} else {
			print("Double8 not found")
		}

		if let Triple8 = dartBoard.childNode(withName: "Triple8") as? SKReferenceNode {
			triple8 = Triple8
			triple8.name = "T8"
			dartLocations.append(triple8)
		} else {
			print("Triple8 not found")
		}

		if let Single7 = dartBoard.childNode(withName: "Single7") as? SKReferenceNode {
			single7 = Single7
			single7.name = "S7"

			dartLocations.append(single7)
		} else {
			print("Single7 not found")
		}

		if let Double7 = dartBoard.childNode(withName: "Double7") as? SKReferenceNode {
			double7 = Double7
			double7.name = "D7"
			dartLocations.append(double7)
		} else {
			print("Double7 not found")
		}

		if let Triple7 = dartBoard.childNode(withName: "Triple7") as? SKReferenceNode {
			triple7 = Triple7
			triple7.name = "T7"
			dartLocations.append(triple7)
		} else {
			print("Triple7 not found")
		}

		if let Single6 = dartBoard.childNode(withName: "Single6") as? SKReferenceNode {
			single6 = Single6
			single6.name = "S6"
			dartLocations.append(single6)
		} else {
			print("Single6 not found")
		}

		if let Double6 = dartBoard.childNode(withName: "Double6") as? SKReferenceNode {
			double6 = Double6
			double6.name = "D6"
			dartLocations.append(double6)
		} else {
			print("Double6 not found")
		}

		if let Triple6 = dartBoard.childNode(withName: "Triple6") as? SKReferenceNode {
			triple6 = Triple6
			triple6.name = "T6"
			dartLocations.append(triple6)
		} else {
			print("Triple6 not found")
		}

		if let Single5 = dartBoard.childNode(withName: "Single5") as? SKReferenceNode {
			single5 = Single5
			single5.name = "S5"
			dartLocations.append(single5)
		} else {
			print("Single5 not found")
		}

		if let Double5 = dartBoard.childNode(withName: "Double5") as? SKReferenceNode {
			double5 = Double5
			double5.name = "D5"
			dartLocations.append(double5)
		} else {
			print("Double5 not found")
		}

		if let Triple5 = dartBoard.childNode(withName: "Triple5") as? SKReferenceNode {
			triple5 = Triple5
			triple5.name = "T5"
			dartLocations.append(triple5)
		} else {
			print("Triple5 not found")
		}

		if let Single4 = dartBoard.childNode(withName: "Single4") as? SKReferenceNode {
			single4 = Single4
			single4.name = "S4"
			dartLocations.append(single4)
		} else {
			print("Single4 not found")
		}

		if let Double4 = dartBoard.childNode(withName: "Double4") as? SKReferenceNode {
			double4 = Double4
			double4.name = "D4"
			dartLocations.append(double4)
		} else {
			print("Double4 not found")
		}

		if let Triple4 = dartBoard.childNode(withName: "Triple4") as? SKReferenceNode {
			triple4 = Triple4
			triple4.name = "T4"
			dartLocations.append(triple4)
		} else {
			print("Triple4 not found")
		}

		if let Single3 = dartBoard.childNode(withName: "Single3") as? SKReferenceNode {
			single3 = Single3
			single3.name = "S3"
			dartLocations.append(single3)
		} else {
			print("Single3 not found")
		}

		if let Double3 = dartBoard.childNode(withName: "Double3") as? SKReferenceNode {
			double3 = Double3
			double3.name = "D3"
			dartLocations.append(double3)
		} else {
			print("Double3 not found")
		}

		if let Triple3 = dartBoard.childNode(withName: "Triple3") as? SKReferenceNode {
			triple3 = Triple3
			triple3.name = "T3"
			dartLocations.append(triple3)
		} else {
			print("Triple3 not found")
		}

		if let Single2 = dartBoard.childNode(withName: "Single2") as? SKReferenceNode {
			single2 = Single2
			single2.name = "S2"
			dartLocations.append(single2)
		} else {
			print("Single2 not found")
		}

		if let Double2 = dartBoard.childNode(withName: "Double2") as? SKReferenceNode {
			double2 = Double2
			double2.name = "D2"
			dartLocations.append(double2)
		} else {
			print("Double2 not found")
		}

		if let Triple2 = dartBoard.childNode(withName: "Triple2") as? SKReferenceNode {
			triple2 = Triple2
			triple2.name = "T2"
			dartLocations.append(triple2)
		} else {
			print("Triple2 not found")
		}

		if let Single1 = dartBoard.childNode(withName: "Single1") as? SKReferenceNode {
			single1 = Single1
			single1.name = "S1"
			dartLocations.append(single1)
		} else {
			print("Single1 not found")
		}

		if let Double1 = dartBoard.childNode(withName: "Double1") as? SKReferenceNode {
			double1 = Double1
			double1.name = "D1"
			dartLocations.append(double1)
		} else {
			print("Double1 not found")
		}

		if let Triple1 = dartBoard.childNode(withName: "Triple1") as? SKReferenceNode {
			triple1 = Triple1
			triple1.name = "T1"
			dartLocations.append(triple1)
		} else {
			print("Triple1 not found")
		}

		if let Single25 = dartBoard.childNode(withName: "Single25") as? SKReferenceNode {
			single25 = Single25
			single25.name = "S25"
			dartLocations.append(single25)
		}

		if let Double25 = dartBoard.childNode(withName: "Double25") as? SKReferenceNode {
			double25 = Double25
			double25.name = "D25"
			dartLocations.append(double25)
		}

		for location in dartLocations {
			location.alpha = 0
		}

		if let DoneButton = backGround.childNode(withName: "DoneButton") as? SKSpriteNode {
			doneButton = DoneButton
		} else {
			print("donebutton not found")
		}
	}

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

	//MARK: *********** Begin Setup Checkouts ***********
	func setupCheckOuts() {
		for point in 40...170 {
			var firstDart: Dart!
			var secondDart: Dart?
			var thirdDart: Dart?

			switch point {
			case 40:
				firstDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				secondDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 41:
				firstDart = Dart(multiplierLabel: "S", pointValue: 9, boardLocation: single9)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 42:
				firstDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 43:
				firstDart = Dart(multiplierLabel: "S", pointValue: 11, boardLocation: single11)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 44:
				firstDart = Dart(multiplierLabel: "S", pointValue: 12, boardLocation: single12)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 45:
				firstDart = Dart(multiplierLabel: "S", pointValue: 13, boardLocation: single13)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 46:
				firstDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 47:
				firstDart = Dart(multiplierLabel: "S", pointValue: 15, boardLocation: single15)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 48:
				firstDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 49:
				firstDart = Dart(multiplierLabel: "S", pointValue: 17, boardLocation: single17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 50:
				firstDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 51:
				firstDart = Dart(multiplierLabel: "S", pointValue: 11, boardLocation: single11)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 52:
				firstDart = Dart(multiplierLabel: "S", pointValue: 12, boardLocation: single12)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 53:
				firstDart = Dart(multiplierLabel: "S", pointValue: 13, boardLocation: single13)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 54:
				firstDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 55:
				firstDart = Dart(multiplierLabel: "S", pointValue: 15, boardLocation: single15)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 56:
				firstDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 57:
				firstDart = Dart(multiplierLabel: "S", pointValue: 17, boardLocation: single17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 58:
				firstDart = Dart(multiplierLabel: "S", pointValue: 18, boardLocation: single18)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 59:
				firstDart = Dart(multiplierLabel: "S", pointValue: 19, boardLocation: single19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 60:
				firstDart = Dart(multiplierLabel: "S", pointValue: 20, boardLocation: single20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 61:
				firstDart = Dart(multiplierLabel: "S", pointValue: 25, boardLocation: single25)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 62:
				firstDart = Dart(multiplierLabel: "T", pointValue: 10, boardLocation: triple10)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 63:
				firstDart = Dart(multiplierLabel: "T", pointValue: 13, boardLocation: triple13)
				secondDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 64:
				firstDart = Dart(multiplierLabel: "T", pointValue: 16, boardLocation: triple16)
				secondDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 65:
				firstDart = Dart(multiplierLabel: "S", pointValue: 25, boardLocation: single25)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 66:
				firstDart = Dart(multiplierLabel: "T", pointValue: 10, boardLocation: triple10)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 67:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 68:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 4, boardLocation: double4)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 69:
				firstDart = Dart(multiplierLabel: "T", pointValue: 11, boardLocation: triple11)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 70:
				firstDart = Dart(multiplierLabel: "T", pointValue: 10, boardLocation: triple10)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 71:
				firstDart = Dart(multiplierLabel: "T", pointValue: 13, boardLocation: triple13)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 72:
				firstDart = Dart(multiplierLabel: "T", pointValue: 12, boardLocation: triple12)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 73:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 74:
				firstDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 75:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 76:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 77:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 10, boardLocation: double10)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 78:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 79:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 14, boardLocation: double14)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 80:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 10, boardLocation: double10)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 81:
				firstDart = Dart(multiplierLabel: "T", pointValue: 15, boardLocation: triple15)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 82:
				firstDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 83:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 84:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 85:
				firstDart = Dart(multiplierLabel: "T", pointValue: 15, boardLocation: triple15)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 86:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 87:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 88:
				firstDart = Dart(multiplierLabel: "T", pointValue: 16, boardLocation: triple16)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 89:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double14)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 90:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 91:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 92:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 93:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 94:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 95:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 19, boardLocation: double19)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 96:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 97:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 98:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 19, boardLocation: double19)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 99:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 100:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 101:
				firstDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				secondDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
				thirdDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
			case 102:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 103:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 104:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "S", pointValue: 18, boardLocation: single18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 105:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 13, boardLocation: single13)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 106:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 107:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 108:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 109:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 110:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 10, boardLocation: single10)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 111:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 11, boardLocation: single11)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 112:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 12, boardLocation: single12)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 113:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 114:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 115:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 18, boardLocation: single18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 116:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 117:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 17, boardLocation: single17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 118:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 18, boardLocation: single18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 119:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 12, boardLocation: single12)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 120:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 20, boardLocation: single20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 121:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 11, boardLocation: single11)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 122:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "S", pointValue: 18, boardLocation: single18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 123:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 16, boardLocation: single16)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 124:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 14, boardLocation: single14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 125:
				firstDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
			case 126:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "S", pointValue: 19, boardLocation: single19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 127:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
			case 128:
				firstDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				secondDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 129:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "T", pointValue: 12, boardLocation: triple12)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 130:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "S", pointValue: 20, boardLocation: single20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 131:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 13, boardLocation: triple13)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 132:
				firstDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
				secondDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 133:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
			case 134:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 135:
				firstDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
				secondDart = Dart(multiplierLabel: "T", pointValue: 15, boardLocation: triple15)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 136:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 8, boardLocation: double8)
			case 137:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 10, boardLocation: double10)
			case 138:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
			case 139:
				firstDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				secondDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 140:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 10, boardLocation: double10)
			case 141:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 15, boardLocation: triple15)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 142:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 14, boardLocation: triple14)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 143:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 144:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 12, boardLocation: double12)
			case 145:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 15, boardLocation: triple15)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 146:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 147:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 148:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 16, boardLocation: triple16)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 149:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 150:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 151:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 152:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 16, boardLocation: double16)
			case 153:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 154:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 155:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 19, boardLocation: double19)
			case 156:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 18, boardLocation: double18)
			case 157:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 158:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 19, boardLocation: double19)
			case 160:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 20, boardLocation: double20)
			case 161:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 17, boardLocation: triple17)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 164:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 18, boardLocation: triple18)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 167:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 19, boardLocation: triple19)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			case 170:
				firstDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				secondDart = Dart(multiplierLabel: "T", pointValue: 20, boardLocation: triple20)
				thirdDart = Dart(multiplierLabel: "D", pointValue: 25, boardLocation: double25)
			default:
				firstDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
				secondDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
				secondDart = Dart(multiplierLabel: "", pointValue: 0, boardLocation: nil)
				break
			}

			let currentCheckOut = checkOut(pointsRemaining: point, firstDart: Dart(multiplierLabel: firstDart.multiplierLabel, pointValue: firstDart.pointValue, boardLocation: firstDart.boardLocation), secondDart: Dart(multiplierLabel: secondDart?.multiplierLabel, pointValue: secondDart?.pointValue, boardLocation: secondDart?.boardLocation), thirdDart: Dart(multiplierLabel: thirdDart?.multiplierLabel, pointValue: thirdDart?.pointValue, boardLocation: thirdDart?.boardLocation))
			checkOuts.append(currentCheckOut)
		}
	}
	//MARK: ********** End Setup Checkout **********
}
