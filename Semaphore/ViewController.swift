//
//  ViewController.swift
//  Semaphore
//
//  Created by Arsalan Balzhinimaev on 05.01.2022.
//

import UIKit

enum CurrentLight {
	case red, yellow, green
}

class ViewController: UIViewController {

	@IBOutlet var redLightView: UIView!
	@IBOutlet var yellowLightView: UIView!
	@IBOutlet var greenLightView: UIView!

	@IBOutlet var actionButton: UIButton!

	private let lightOn: CGFloat = 1
	private let lightOff: CGFloat = 0.3
	private var currentLight = CurrentLight.red

	override func viewDidLoad() {
		super.viewDidLoad()

		redLightView.alpha = lightOff
		yellowLightView.alpha = lightOff
		greenLightView.alpha = lightOff

		actionButton.layer.cornerRadius = 10
	}

	override func viewWillLayoutSubviews() {
		redLightView.layer.cornerRadius = redLightView.frame.width / 2
		yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
		greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
	}

	@IBAction func actionButtonPressed() {

//		if actionButton.currentTitle == "START" {
//			actionButton.setTitle("NEXT", for: .normal)
//			redLightView.alpha = lightOn
//		} else if redLightView.alpha == lightOn {
//			redLightView.alpha = lightOff
//			yellowLightView.alpha = lightOn
//		} else if yellowLightView.alpha == lightOn {
//			yellowLightView.alpha = lightOff
//			greenLightView.alpha = lightOn
//		} else if greenLightView.alpha == lightOn {
//			greenLightView.alpha = lightOff
//			redLightView.alpha = lightOn
//		}

		if actionButton.currentTitle == "START" {
			actionButton.setTitle("NEXT", for: .normal)
		}

		switch currentLight {
		case .red:
			currentLight = .yellow
			redLightView.alpha = lightOn
			greenLightView.alpha = lightOff
		case .yellow:
			currentLight = .green
			redLightView.alpha = lightOff
			yellowLightView.alpha = lightOn

		case .green:
			currentLight = .red
			yellowLightView.alpha = lightOff
			greenLightView.alpha = lightOn
		}
	}
}
