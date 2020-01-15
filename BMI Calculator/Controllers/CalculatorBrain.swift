//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Toni De Gea on 14/01/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
        
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pie", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Yeah you're fit!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Maybe less snacks?", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
       
}
