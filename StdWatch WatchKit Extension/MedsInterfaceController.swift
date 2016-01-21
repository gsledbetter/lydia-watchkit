//
//  MedsInterfaceController.swift
//  StdWatch
//
//  Created by Greg Ledbetter on 1/20/16.
//  Copyright © 2016 IIU. All rights reserved.
//

import WatchKit
import Foundation


class MedsInterfaceController: WKInterfaceController {

    @IBOutlet var medsTable: WKInterfaceTable!
    
    var regimen: Condition.Regimen?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let regimen = context as? Condition.Regimen {
            self.regimen = regimen
            self.setTitle(self.regimen?.header)
            
            var rowTypesList = [String]()
            
            for med in regimen.meds {
                
                
                if med.text == "OR"  {
                        rowTypesList.append("SeperatorRow")
                } else {
                    
                    rowTypesList.append("MedRow")
                }
                

            }
            medsTable.setRowTypes(rowTypesList)
            
            for index in 0..<medsTable.numberOfRows {
                if let controller = medsTable.rowControllerAtIndex(index) as? MedRowController {
                    let med = regimen.meds[index]
                    controller.med = med
                }
            }

        }
        
    }
    
}
