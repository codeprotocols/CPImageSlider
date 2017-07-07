//
//  ViewController.swift
//  ImageSlider
//
//  Created by Amit Singh on 28/06/17.
//  Copyright © 2017 Code Protocols. All rights reserved.
//

import UIKit

let _AUTO_SCROLL_ENABLED : Bool = false

class ViewController: UIViewController, CPSliderDelegate {

	var imagesArray = [String]()
	
	@IBOutlet weak var slider : CPImageSlider!
	
	@IBOutlet weak var autoSwitch : UISwitch!
	@IBOutlet weak var arrowSwitch : UISwitch!
	@IBOutlet weak var indicatorSwitch : UISwitch!
	@IBOutlet weak var sliderSwitch : UISwitch!
	@IBOutlet weak var circularSwitch : UISwitch!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		imagesArray = ["wallpaper1.jpg","wallpaper2.jpg","wallpaper3.jpg","wallpaper4.jpg"]
		slider.images = imagesArray
		slider.delegate = self
		let zoom : CGFloat = 0.8
		autoSwitch.transform = CGAffineTransform(scaleX: zoom, y: zoom)
		arrowSwitch.transform = CGAffineTransform(scaleX: zoom, y: zoom)
		indicatorSwitch.transform = CGAffineTransform(scaleX: zoom, y: zoom)
		sliderSwitch.transform = CGAffineTransform(scaleX: zoom, y: zoom)
		circularSwitch.transform = CGAffineTransform(scaleX: zoom, y: zoom)
		
		autoSwitch.isOn = slider.autoSrcollEnabled
		arrowSwitch.isOn = slider.enableArrowIndicator
		indicatorSwitch.isOn = slider.enablePageIndicator
		sliderSwitch.isOn = slider.enableSwipe
		circularSwitch.isOn = slider.allowCircular
	}
	
	
	func sliderImageTapped(slider: CPImageSlider, index: Int) {
		print("\(index)")
	}
	
	@IBAction func switchValueChange(switchBtn : UISwitch)
	{
		if switchBtn.isEqual(autoSwitch)
		{
			slider.autoSrcollEnabled = switchBtn.isOn
		}
		else if switchBtn.isEqual(arrowSwitch)
		{
			slider.enableArrowIndicator = switchBtn.isOn
		}
		else if switchBtn.isEqual(indicatorSwitch)
		{
			slider.enablePageIndicator = switchBtn.isOn
		}
		else if switchBtn.isEqual(sliderSwitch)
		{
			slider.enableSwipe = switchBtn.isOn
		}
		else if switchBtn.isEqual(circularSwitch)
		{
			slider.allowCircular = switchBtn.isOn
		}
	}
}

