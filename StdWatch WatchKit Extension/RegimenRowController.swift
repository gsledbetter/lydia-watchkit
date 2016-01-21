//
//  RegimenRowController.swift
//  StdWatch
//
//  Created by Greg Ledbetter on 1/20/16.
//  Copyright © 2016 IIU. All rights reserved.
//

import WatchKit

class RegimenRowController: NSObject {
    @IBOutlet var regimenLabel: WKInterfaceLabel!
    
    var regimen: Condition.Regimen? {
        didSet {
            if let regimen = regimen {
                regimenLabel.setText(regimen.header)
            }
        }
    }

}
