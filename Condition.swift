//
//  Condition.swift
//

import WatchKit

class Condition {

    class Regimen {
        
        class Med {
            let text: String
            init(med: String) {
                self.text = med
            }
        }
        let header: String
        var meds: Array<Med>
        
        init(header: String, meds: Array<String>) {
            self.header = header
            self.meds = [Med]()
            for med in meds {
                let newMed = Med(med: med)
                self.meds.append(newMed)
            }
        }
    }
    
    let condition: String
    let regimens: Array<Regimen>
    
//    class func allConditions() -> [Condition] {
//        var conditions = [Condition]()
//        let formatter = NSDateFormatter()
//        formatter.dateFormat = "HH:mm"
//        if let path = NSBundle.mainBundle().pathForResource("Conditions", ofType: "json"), let data = NSData(contentsOfFile: path) {
//            do {
//                let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as! [Dictionary<String, String>]
//                for dict in json {
//                    let condition = Condition(dictionary: dict, formatter: formatter)
//                    conditions.append(condition)
//                }
//            } catch {
//                print(error)
//            }
//        }
//        return conditions
//    }
    
    class func loadConditions() -> [Condition] {
        var conditions = [Condition]()
        
        // Bacteterial Vaginosis
        var meds = [String]()
        meds.append("Metronidazole 500 mg orally twice a day for 7 days")
        meds.append("OR")
        meds.append("Metronidazole gel 0.75%, one full applicator (5 g) intravaginally, once a day for 5 days")
        meds.append("OR")
        meds.append("Clindamycin cream 2%, one full applicator (5 g) intravaginally at bedtime for 7 days")
        var recReg = Regimen(header: "Recommended Regimens", meds: meds)
        
        meds.removeAll()
        meds.append("Tinidazole 2 g orally once daily for 2 days")
        meds.append("OR")
        meds.append("Tinidazole 1 g orally once daily for 5 days")
        meds.append("OR")
        meds.append("Clindamycin 300 mg orally twice daily for 7 days")
        meds.append("OR")
        meds.append("Clindamycin ovules 100 mg intravaginally once at bedtime for 3 days")
        var altReg = Regimen(header: "Alternative Regimens", meds: meds)
        
        var regs = [recReg,altReg]
        let bacVag = Condition(condition: "Bacterial Vaginosis", regimens: regs)
        conditions.append(bacVag)
        meds.removeAll()
        regs.removeAll()
        
        
        // cervicitis
        meds.append("Azithromycin 1 g orally in a single dose")
        meds.append("OR")
        meds.append("Doxycycline 100 mg orally twice a day for 7 days")
        recReg = Regimen(header: "Recommended Regimens", meds: meds)
        regs = [recReg]
        let cervicitis = Condition(condition: "Cervicitis", regimens: regs)
        conditions.append(cervicitis)
        meds.removeAll()
        regs.removeAll()

        // chlamydia       
        meds.append("Azithromycin 1 g orally in a single dose")
        meds.append("OR")
        meds.append("Doxycycline 100 mg orally twice a day for 7 days")
        recReg = Regimen(header: "Recommended Regimens", meds: meds)
        
        meds.removeAll()
        meds.append("Erythromycin base 500 mg orally four times a day for 7 days")
        meds.append("OR")
        meds.append("Erythromycin ethylsuccinate 800 mg orally four times a day for 7 days")
        meds.append("OR")
        meds.append("Levofloxacin 500 mg orally once daily for 7 days")
        meds.append("OR")
        meds.append("Ofloxacin 300 mg orally twice a day for 7 days")
        altReg = Regimen(header: "Alternative Regimens", meds: meds)
        regs = [recReg,altReg]

        let chlamydia = Condition(condition: "Chlamydia", regimens: regs)
        conditions.append(chlamydia)
        meds.removeAll()
        regs.removeAll()

        return conditions

    }
    
    init(condition: String, regimens:Array<Regimen>) {
        self.condition = condition
        self.regimens = regimens
        
    }
    
    
}