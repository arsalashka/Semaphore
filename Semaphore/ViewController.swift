//
//  ViewController.swift
//  Semaphore
//
//  Created by Arsalan Balzhinimaev on 05.01.2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var redLightView: UIView!
	@IBOutlet var yellowLightView: UIView!
	@IBOutlet var greenLightView: UIView!
	@IBOutlet var actionButton: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()

		redLightView.alpha = 0.3
		yellowLightView.alpha = 0.3
		greenLightView.alpha = 0.3

		redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
		yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
		greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
		actionButton.layer.cornerRadius = 10
	}


	@IBAction func actionButtonPressed() {

		if actionButton.titleLabel?.text == "START" {
			actionButton.setTitle("NEXT", for: .normal)
			redLightView.alpha = 1
			return
		}

		if redLightView.alpha == 1 {
			redLightView.alpha = 0.3
			yellowLightView.alpha = 1
			return
		}

		if yellowLightView.alpha == 1 {
			yellowLightView.alpha = 0.3
			greenLightView.alpha = 1
			return
		}

		if greenLightView.alpha == 1 {
			greenLightView.alpha = 0.3
			redLightView.alpha = 1
			return
		}
	}
}
