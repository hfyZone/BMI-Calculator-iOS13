//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 韩飞洋 on 2025/10/26.
//  Copyright © 2025 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "多吃点", color: .systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "保持健康", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "少吃点", color: .systemPink)
        }
        
    }
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "NULL"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
