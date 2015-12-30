//
//  ViewController.swift
//  TipsProject2
//
//  Created by Kenway on 12/29/15.
//  Copyright © 2015 haitham mawari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var splitValueField: UITextField!
    @IBOutlet weak var eachValue: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var firstView: UISegmentedControl!
    @IBOutlet weak var secondView: UISegmentedControl!
    @IBOutlet weak var secondVeiwTechLogo: UIImageView!
    @IBOutlet weak var firstViewTechLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.firstView.alpha = 1
        self.secondView.alpha = 1
        
        
        UIView.animateWithDuration(3, animations: {
            // This causes first view to fade in and second view to fade out
            self.firstView.alpha = 0
            self.secondView.alpha = 1
            
            self.firstViewTechLogo.alpha = 0
            self.secondVeiwTechLogo.alpha = 1
            
            
        })
        
        

        
        
                // Sets the title in the Navigation Bar
        self.title = "The most generous Tip Calculator"
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "0.00"
        totalLabel.text = "0.00"
        
        splitValueField.text = "1"
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.22]
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
        var splitField = NSString(string: splitValueField.text!).doubleValue
        
        var tip = (billAmount * tipPercentage)
        
        var total = billAmount + tip
        
        var totalEach = total/splitField
       
        
        tipLabel.text = "$\(tip)"
        
        totalLabel.text = "$\(total)"
    
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        
       
        
        eachValue.text = "$\(totalEach)"
        
        eachValue.text = String(format: "%.2f", totalEach)
            
        
        
        
        print("user editing bill")
    }
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipValue = defaults.doubleForKey("default_tip_percentage")
       
        
        print("view will appear")
     
        var tipPercentage = tipValue
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
        var tip = billAmount * tipPercentage
        
        var total = billAmount + tip
        
        
        
        
        tipLabel.text = "$\(tip)"
        
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        print("user editing bill")
        
        
        var splitField = NSString(string: splitValueField.text!).doubleValue

        
        var totalEach = total/splitField
        
        eachValue.text = "$\(totalEach)"
        
        eachValue.text = String(format: "%.2f", totalEach)

        
        // This is a good place to retrieve the default tip percentage from NSUserDefaults
        // and use it to update the tip amount
        
    }
    


    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    // Optionally initialize the property to a desired starting value
   
    

}

