//
//  ViewController.swift
//  LoveFinder
//
//  Created by Lynn on 14-10-1.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var heightNumber: UISlider!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool  {
        name.resignFirstResponder();
        return true
    }
    
    @IBAction func heightChanged(sender: AnyObject) {
        var slider = sender as UISlider
        var i = Int(slider.value)
        slider.value = Float(i)
        height.text = "\(i)厘米"
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        var who = name.text;
        
        result.text = who
    }

}

