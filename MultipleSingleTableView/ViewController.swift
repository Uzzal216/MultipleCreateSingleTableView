//
//  ViewController.swift
//  MultipleSingleTableView
//
//  Created by U.M. Hamidul islam on 1/6/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table1: UITableView!
    
    @IBOutlet weak var table2: UITableView!
    
   
    
    var myDictionary = ["A" :  ["Cat","Dog"],
                        "B" : ["Bird","Fly"],
                        "C" : ["Lion","Danger"],
                        "D" : ["Aplle","Testy"],
                        "E" : ["Mango","Deliciois"],]
    var item : String = "A"
    
    let cellIdentifier : String = "cell"
    
    var numberOfTeams : Int = 0

    
    
    
    
    override func viewDidLoad() {
        
        
        table1.delegate = self
        table2.delegate = self
        
        table1.dataSource = self
        table2.dataSource = self

        print(myDictionary)
        super.viewDidLoad()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (tableView.tag == 1)
        {
            numberOfTeams = myDictionary.keys.count
                return numberOfTeams
        }
        else if (tableView.tag == 2)
        {
           numberOfTeams = myDictionary[item]!.count
            return numberOfTeams
        }
        
        else
        {
       
        return 0
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as
            
        UITableViewCell
        
        
        if (tableView.tag == 1)
        {
            cell.textLabel?.text = Array(myDictionary.keys)[indexPath.row]
            
            //item =  Array(myDictionary.keys)[indexPath.row]
            
        }
        else if (tableView.tag == 2 )
        {
            cell.textLabel?.text = myDictionary[item]?[indexPath.row]
            
        }
        else{
            
            print("error")
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {

        print(indexPath.row)
        if (tableView.tag == 1)
        {
            item = Array(myDictionary.keys)[indexPath.row]
            print(item)
            table2.reloadData()
        }
        
    }
}

