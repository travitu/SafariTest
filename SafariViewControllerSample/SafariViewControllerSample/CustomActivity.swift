//
//  CustomActivity.swift
//  SafariViewControllerSample
//
//  Created by Toshikazu Fukuoka on 2015/08/25.
//  Copyright © 2015年 travitu. All rights reserved.
//

import UIKit

class CustomActivity: UIActivity {

    override func activityType() -> String? {
        return "CustomActivity"
    }
    
    override func activityImage() -> UIImage? {
        return nil
    }
    
    override func activityTitle() -> String? {
        return "タイトル"
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        
        // somethins...
        
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        // somethins...
    }

}
