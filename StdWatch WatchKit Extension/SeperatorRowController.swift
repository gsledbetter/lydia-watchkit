//
//  SeperatorRowController.swift
//  StdWatch
//
//  Created by Greg Ledbetter on 1/20/16.
//  Copyright © 2016 IIU. All rights reserved.
//

import WatchKit

class SeperatorRowController: NSObject {
    @IBOutlet var seperatorLabel: WKInterfaceLabel!
    
    var med: Condition.Regimen.Med? {
        didSet {
            if let med = med {
                seperatorLabel.setText(med.text)
                seperatorLabel.setTextColor(UIColor.cyanColor())
                seperatorLabel.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Center)
            }
        }
    }

}
