//
//  SettingsViewController.swift
//  TipsProject2
//
//  Created by Kenway on 12/29/15.
//  Copyright © 2015 haitham mawari. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var switch1: UISwitch!
    @IBOutlet var switch2: UISwitch!
    @IBOutlet var switch3: UISwitch!
    
    
    @IBOutlet weak var switchNumberTwo: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
            
        if (defaults.objectForKey("SwitchState") != nil) {
            switch1.on = defaults.boolForKey("SwitchState")
        }
        
        
        if (defaults.objectForKey("SwitchState2") != nil) {
            switch2.on = defaults.boolForKey("SwitchState2")
        }
        
        
        if (defaults.objectForKey("SwitchState3") != nil) {
            switch3.on = defaults.boolForKey("SwitchState3")
        }
        
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: UISwitch) {
    
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.18, forKey: "default_tip_percentage")
        defaults.synchronize()
        
        
        
        print("blue")
    
    }
    
    

    @IBAction func onTap2(sender: UISwitch) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.20, forKey: "default_tip_percentage")
        defaults.synchronize()
        
        print("yellow")

    }
    
    @IBAction func onTap3(sender: UISwitch) {
  
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.22, forKey: "default_tip_percentage")
        defaults.synchronize()

        print("red")
        
       
        
      
        
        defaults.synchronize()
        
        print("red")

        
        
        
        
    }
    
    
    
    @IBAction func saveSwitchState1(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if switch1.on {
            defaults.setBool(true, forKey: "SwitchState")
        } else {
            defaults.setBool(false, forKey: "SwitchState")
        }
    }
    
    @IBAction func saveSwitchState2(sender: AnyObject) {
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if switch2.on {
            defaults.setBool(true, forKey: "SwitchState2")
        } else {
            defaults.setBool(false, forKey: "SwitchState2")
        }

    }
    
    @IBAction func saveSwitchState3(sender: AnyObject) {
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if switch3.on {
            defaults.setBool(true, forKey: "SwitchState3")
        } else {
            defaults.setBool(false, forKey: "SwitchState3")
        }

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        print("view will appear 2")
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
