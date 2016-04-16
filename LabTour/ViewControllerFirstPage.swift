//
//  ViewControllerFirstPage.swift
//  LabTour
//
//  Created by Tony Toussaint on 4/15/16.
//  Copyright © 2016 Tony Toussaint. All rights reserved.
//

import UIKit
import RealmSwift

class ViewControllerFirstPage: UIViewController {
    @IBOutlet var botonDerecha: UIButton!
    
    
    @IBAction func clickBotonDerecha(sender: AnyObject) {
        NSLog("Hola")
        if categories.count == 0 {
            let alertController = UIAlertController(title: "Bienvenido", message: "Bienvenido a LabTour, viaja por el laboratorio con las flechas y haz click en las máquinas para conocerlas", preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Destructive) { alert in
                alertController.dismissViewControllerAnimated(true, completion: nil)
            }
            alertController.addAction(alertAction)
            presentViewController(alertController, animated: true, completion: nil)
        }
        
        if categories.count == 0 {
            try! realm.write(){
                let user = User()
                user.name = "test_user"
                realm.add(user)
                
            }
        }

        
    }
    
    
    let realm = try! Realm()
    lazy var categories: Results<User> = { self.realm.objects(User) }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.path!)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
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
