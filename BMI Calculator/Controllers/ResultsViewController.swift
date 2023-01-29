//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by FENTON, EDWARD F on 12/29/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLbl: UILabel!
    @IBOutlet weak var adviceLable: UIImageView!
    @IBOutlet weak var bmiLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
        adviceLbl.text = advice
        view.backgroundColor = color
        
  
    }
    @IBAction func reCalculatePRessed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
