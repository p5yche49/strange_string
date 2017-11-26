//
//  ViewController.swift
//  strange_string
//
//  Created by rose on 2017. 10. 29..
//  Copyright © 2017년 rose. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var returnString = self.convertString(originalString: "tRy StragE stRing helLO wOrld")
        print(returnString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func convertString(originalString:String) -> String {
        let fullString = originalString
        let fullStringArr = fullString.components(separatedBy: " ")
        var returnString = ""
        
        for var tempString:String in fullStringArr {
            var count:Int = 0
            while count < tempString.characters.count {
                var index = tempString.index(tempString.startIndex, offsetBy:count)
                var tempChar:String
                if count%2 == 0 {
                    tempChar = String(tempString[index]).uppercased()
                } else {
                    tempChar = String(tempString[index]).lowercased()
                }
                returnString = returnString + tempChar
                count = count + 1

            }
            returnString = returnString + " "
        }
        
        
        return returnString
    }
}
