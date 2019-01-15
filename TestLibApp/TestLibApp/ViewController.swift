//
//  ViewController.swift
//  TestLibApp
//
//  Created by Leigh Hall on 15/01/2019.
//  Copyright © 2019 Leigh Hall. All rights reserved.
//

import UIKit
import testlibA
import testlibB

class ViewController: UIViewController {

    @IBOutlet weak var resultTextField: UITextField!
    private var selectedLibIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func libSelectorValueChanged(_ sender: UISegmentedControl) {
        selectedLibIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func getDayButtonClicked(_ sender: UIButton) {
        var dayText = ""
        
        switch selectedLibIndex {
        case 0: dayText = testlibA.DateInfo.now()
        case 1: dayText = testlibB.DateInfo.now()
        default: dayText = "error"
        }
        
        resultTextField.text = dayText
    }
}

