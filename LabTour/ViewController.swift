//
//  ViewController.swift
//  LabTour
//
//  Created by Tony Toussaint on 3/6/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet var ScrollView: UIScrollView!

    @IBOutlet var Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        ScrollView.backgroundColor = UIColor(patternImage: (UIImage(named: "Foto1")!))
        
        ScrollView.contentSize.width = 960
        ScrollView.contentSize.height = 720
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click(sender: AnyObject) {
        
        //print("Ni de pedo")
        
    }

}

