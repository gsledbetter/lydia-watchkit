//
//  ConditionRowController.swift
//
//  Created by Greg Ledbetter on 12/29/15.
//

import WatchKit

class ConditionRowController: NSObject {
    
    @IBOutlet var originLabel: WKInterfaceLabel!
    
    var condition: Condition? {
        didSet {
            if let condition = condition {
                originLabel.setText(condition.condition)
            }
        }
    }
}
