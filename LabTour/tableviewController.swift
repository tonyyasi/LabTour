//
//  tableviewController.swift
//  LabTour
//
//  Created by Tony Toussaint on 5/1/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var tableview: UITableView!
    let filters = [ "Solben", "lorem", "ipsum"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(filters[indexPath.row])
        if(filters[indexPath.row] == "Solben"){
            
            
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FilterCell", forIndexPath: indexPath)
        cell.textLabel!.text = filters[indexPath.row]
        return cell
    }
    
}