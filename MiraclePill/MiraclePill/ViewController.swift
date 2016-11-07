//
//  ViewController.swift
//  MiraclePill
//
//  Created by Tim Kellogg on 11/5/16.
//  Copyright © 2016 Tim Kellogg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    let states = [ "AK - Alaska",
                   "AL - Alabama",
                   "AR - Arkansas",
                   "AS - American Samoa",
                   "AZ - Arizona",
                   "CA - California",
                   "CO - Colorado",
                   "CT - Connecticut",
                   "DC - District of Columbia",
                   "DE - Delaware",
                   "FL - Florida",
                   "GA - Georgia",
                   "GU - Guam",
                   "HI - Hawaii",
                   "IA - Iowa",
                   "ID - Idaho",
                   "IL - Illinois",
                   "IN - Indiana",
                   "KS - Kansas",
                   "KY - Kentucky",
                   "LA - Louisiana",
                   "MA - Massachusetts",
                   "MD - Maryland",
                   "ME - Maine",
                   "MI - Michigan",
                   "MN - Minnesota",
                   "MO - Missouri",
                   "MS - Mississippi",
                   "MT - Montana",
                   "NC - North Carolina",
                   "ND - North Dakota",
                   "NE - Nebraska",
                   "NH - New Hampshire",
                   "NJ - New Jersey",
                   "NM - New Mexico",
                   "NV - Nevada",
                   "NY - New York",
                   "OH - Ohio",
                   "OK - Oklahoma",
                   "OR - Oregon",
                   "PA - Pennsylvania",
                   "PR - Puerto Rico",
                   "RI - Rhode Island",
                   "SC - South Carolina",
                   "SD - South Dakota",
                   "TN - Tennessee",
                   "TX - Texas",
                   "UT - Utah",
                   "VA - Virginia",
                   "VI - Virgin Islands",
                   "VT - Vermont",
                   "WA - Washington", 
                   "WI - Wisconsin", 
                   "WV - West Virginia", 
                   "WY - Wyoming"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryInput.isHidden = true
        zipLabel.isHidden = true
        zipInput.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryInput.isHidden = false
        zipLabel.isHidden = false
        zipInput.isHidden = false
    }
    

    @IBAction func submitBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }

        successImage.isHidden = false
    }
}

