//
//  RegimensInterfaceController.swift
//  StdWatch
//
//  Created by Greg Ledbetter on 1/20/16.
//  Copyright © 2016 IIU. All rights reserved.
//

import WatchKit
import Foundation


class RegimensInterfaceController: WKInterfaceController {

    @IBOutlet var regimensTable: WKInterfaceTable!

    var condition: Condition?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let condition = context as? Condition {
            self.condition = condition
            self.setTitle(self.condition?.condition)

            regimensTable.setNumberOfRows(condition.regimens.count, withRowType: "RegimenRow")
            
            for index in 0..<regimensTable.numberOfRows {
                if let controller = regimensTable.rowControllerAtIndex(index) as? RegimenRowController {
                    controller.regimen = condition.regimens[index]
                }
            }
        
        
        }

    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let regimen = condition!.regimens[rowIndex]
        pushControllerWithName("Meds", context: regimen)
    }

}
