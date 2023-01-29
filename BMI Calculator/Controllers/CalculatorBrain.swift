//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by FENTON, EDWARD F on 12/30/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMI() ->String{
        let bmiTo1DecimalPlace = String(format:"%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI.init(value: bmiValue, advice: "You are ideal Weight", color: .blue)
        }
        else if bmiValue < 24.9{
            bmi = BMI.init(value: bmiValue, advice: "You are over Weight", color: .magenta)
    
        }
        else {
            bmi = BMI.init(value: bmiValue, advice: "You need to exercise!!!", color: .red)
            
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Value"
        
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
        
    }
}

