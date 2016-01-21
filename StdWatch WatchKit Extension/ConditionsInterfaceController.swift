//
//  ConditionsInterfaceController.swift
//
//  Created by Greg Ledbetter on 12/23/15.
//

import WatchKit
import Foundation


class ConditionsInterfaceController: WKInterfaceController {


    @IBOutlet var conditionsTable: WKInterfaceTable!

    var conditions = Condition.loadConditions()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        conditionsTable.setNumberOfRows(conditions.count, withRowType: "ConditionRow")
        
        for index in 0..<conditionsTable.numberOfRows {
            if let controller = conditionsTable.rowControllerAtIndex(index) as? ConditionRowController {
                controller.condition = conditions[index]
            }
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let condition = conditions[rowIndex]
        pushControllerWithName("Regimens", context: condition)
    }
    
}
