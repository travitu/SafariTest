//
//  ViewController.swift
//  SafariViewControllerSample
//
//  Created by Toshikazu Fukuoka on 2015/08/25.
//  Copyright © 2015年 travitu. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // entersReaderIfAvailable: はSafariのリーダー表示機能を自動で有効にするかどうかのフラグ
        let safariVC = SFSafariViewController(URL: NSURL(string: "http://apple.com")!, entersReaderIfAvailable: true)
        safariVC.delegate = self
        presentViewController(safariVC, animated: true, completion: nil)
    }
    
    
    // MARK: - SFSafariViewControllerDelegate
    
    // Shareが押された時に呼ばれ、returnで追加したいUIActivityのインスタンスを返す
    func safariViewController(controller: SFSafariViewController, activityItemsForURL URL: NSURL, title: String?) -> [UIActivity] {
        let customActivity = CustomActivity()
        return [customActivity]
    }
    
    // Doneが押された時に呼ばれる
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("safariViewControllerDidFinish")
    }

}

