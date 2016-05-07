//
//  ViewController.swift
//  tview
//
//  Created by satoshiii on 2016/05/07.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit
//　Type 'ViewController' does not conform to protocol 'UITableViewDataSource'
//　必要なメソッドが実装できてない ->コードの綴り間違いなど
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	
	@IBOutlet weak var myTableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()

	}
	
	// 1.表示行数指定(numberOfRow's'InSectionなど長いコード名に要注意)
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
	
	
		cell.textLabel!.text = "\(indexPath.row)行目"
		return cell
	}
	
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print("\(indexPath.row)行目選択！")
	}
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//
//	}

}

