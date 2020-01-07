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
    
    
    let teams : [String] = ["Hamid", "Hridoy", "Kader"]
    
    let Hamidfriends : [String] = ["Uzzal","Zahid","Piyal"]
    let HridoyFriends : [String] = ["Uzzal","Zahid","Piyal","Emon"]
    let KaderFriends : [String] = ["Uzzal","Zahid","Piyal","Ibrahim"]
    
    
    var teamsReference : String = "Hamid"
    
    let cellIdentifier : String = "cell"
    
    var numberOfTeams : Int = 0
    var numberOfFriends : Int = 0
    
    
    
    
    override func viewDidLoad() {
        
        
        table1.delegate = self
        //table2.delegate = self
        
        table1.dataSource = self
        //table2.dataSource = self
        
        
        
        
        
        
        
       var myDictionary = ["A" :  ["Cat","Dog"],
        "B" : ["Bird","Fly"],
        "C" : ["Lion","Danger"],
        "D" : ["Aplle","Testy"],
        "E" : ["Mango","Deliciois"],]
        print(myDictionary)
        super.viewDidLoad()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (tableView.tag == 1)
        {
            numberOfTeams = teams.count
                return numberOfTeams
        }
        else if (tableView.tag == 2)
        {
            if (teamsReference == "Hamid")
            {
                numberOfFriends = Hamidfriends.count
            }
          else if (teamsReference == "Hridoy")
            {
                numberOfFriends = HridoyFriends.count
            }
            
            else if (teamsReference == "Kader")
            {
                numberOfFriends = KaderFriends.count
            }
            return numberOfFriends
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
            cell.textLabel?.text = teams[indexPath.row]
        }
        else if (tableView.tag == 2 )
        {
            
        if (teamsReference == "Hamid")
            {
                cell.textLabel?.text = Hamidfriends[indexPath.row]
            }
        else if (teamsReference == "Hridoy")
            {
                cell.textLabel?.text = HridoyFriends[indexPath.row]
            }
        else if (teamsReference == "Kader")
        {
            cell.textLabel?.text = KaderFriends[indexPath.row]
            
            }
        }
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        if (tableView.tag == 1)
        {
            teamsReference = teams[indexPath.row]
        }
        table2.reloadData()
    }
}

