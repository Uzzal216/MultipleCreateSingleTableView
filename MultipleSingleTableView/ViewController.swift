//
//  ViewController.swift
//  MultipleSingleTableView
//
//  Created by U.M. Hamidul islam on 1/6/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table1: UITableView!
    
    @IBOutlet weak var table2: UITableView!
    override func viewDidLoad() {
        var myDictionary = ["A" :  ["Cat","Dog"],
        "B" : ["Bird","Fly"],
        "C" : ["Lion","Danger"],
        "D" : ["Aplle","Testy"],
        "E" : ["Mango","Deliciois"],
        ]
        print(myDictionary)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
}

