//
//  ConditionInterfaceController.swift
//
//  Created by Greg Ledbetter on 12/22/15.
//

import WatchKit
import Foundation


class ConditionInterfaceController: WKInterfaceController {

    @IBOutlet var regimensLabel: WKInterfaceLabel!
    
    var condition: Condition? {
        didSet {
            if let condition = condition {
                //regimensLabel.setText(condition.regimens)
            }
        }
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let condition = context as? Condition { self.condition = condition }
        self.setTitle(self.condition?.condition)

    }
}
