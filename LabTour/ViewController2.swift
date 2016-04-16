//
//  ViewController2.swift
//  LabTour
//
//  Created by Tony Toussaint on 3/17/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = UIImage(named: "Panoramica")
        

        // Do any additional setup after loading the view.
        ScrollView.backgroundColor = UIColor(patternImage: (UIImage(named: "Panoramica")!))
        
        ScrollView.contentSize.width = 960
        ScrollView.contentSize.height = 279
        NSLog("a")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
