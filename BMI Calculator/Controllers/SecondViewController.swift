//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 韩飞洋 on 2025/10/26.
//  Copyright © 2025 Angela Yu. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    var bmiValue = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = String(format:"%0.1f",bmiValue)
        label.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.addSubview(label)
    }
}
