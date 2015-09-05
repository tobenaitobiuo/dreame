//
//  ViewController.swift
//  GitTest
//
//  Created by 遠藤孝一 on 2015/09/01.
//  Copyright (c) 2015年 Endou_kouiti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBAction func storyBoradSwitch(sender: UISwitch) {
		if sender.on {
			myLabel.text = "On"
			myLabel.backgroundColor = UIColor.orangeColor()
		}
		else {
			myLabel.text = "Off"
			myLabel.backgroundColor = UIColor.grayColor()
		}
	}
	private var myLabel: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// 背景色をCyanに設定する.
		self.view.backgroundColor = UIColor.cyanColor()
		// Swicthを作成する.
		let mySwicth: UISwitch = UISwitch()
		mySwicth.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height - 200)
		// Swicthの枠線を表示する.
		mySwicth.tintColor = UIColor.blackColor()
		// SwitchをOnに設定する.
		mySwicth.on = true
		// SwitchのOn/Off切り替わりの際に、呼ばれるイベントを設定する.
		mySwicth.addTarget(self, action: "onClickMySwicth:", forControlEvents: UIControlEvents.ValueChanged)
		// SwitchをViewに追加する.
		self.view.addSubview(mySwicth)
		// On/Offを表示するラベルを作成する.
		myLabel = UILabel(frame: CGRectMake(0,0,150,150))
		myLabel.backgroundColor = UIColor.orangeColor()
		myLabel.layer.masksToBounds = true
		myLabel.layer.cornerRadius = 75.0
		myLabel.textColor = UIColor.whiteColor()
		myLabel.shadowColor = UIColor.grayColor()
		myLabel.font = UIFont.systemFontOfSize(CGFloat(30))
		myLabel.textAlignment = NSTextAlignment.Center
		myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
		myLabel.text = "On"
		// ラベルをviewに追加
		self.view.addSubview(myLabel)
	}
	internal func onClickMySwicth(sender: UISwitch){
		if sender.on {
			myLabel.text = "On"
			myLabel.backgroundColor = UIColor.orangeColor()
		}
		else {
			myLabel.text = "Off"
			myLabel.backgroundColor = UIColor.grayColor()
		}
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

