//
//  MedRowController.swift
//  StdWatch
//
//  Created by Greg Ledbetter on 1/20/16.
//  Copyright © 2016 IIU. All rights reserved.
//

import WatchKit

class MedRowController: NSObject {
    @IBOutlet var medLabel: WKInterfaceLabel!
    
    var med: Condition.Regimen.Med? {
        didSet {
            if let med = med {
                medLabel.setText(med.text)
                if (med.text == "OR") {
                    medLabel.setTextColor(UIColor.cyanColor())
                    medLabel.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.Center)
                }
            }
        }
    }

}
