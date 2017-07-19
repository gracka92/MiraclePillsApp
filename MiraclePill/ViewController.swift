//
//  ViewController.swift
//  MiraclePill
//
//  Created by Gracjana Leonowicz on 11.07.2017.
//  Copyright © 2017 Gracjana Leonowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var miraclePillImg: UIImageView!
    @IBOutlet weak var miraclePillsText: UILabel!
    @IBOutlet weak var priceTxt: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var enterNameTxt: UITextField!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var enterAdress: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var successImg: UIImageView!
    
    
    private let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire",
        "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania",
        "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington",
        "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func stateBtnPress(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
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
        countryTextField.isHidden = false
        zipLabel.isHidden = false
        zipTextField.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        miraclePillImg.isHidden = true
        miraclePillsText.isHidden = true
        priceTxt.isHidden = true
        divider.isHidden = true
        nameLbl.isHidden = true
        enterNameTxt.isHidden = true
        addressLbl.isHidden = true
        enterAdress.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyNowBtn.isHidden = true
        successImg.isHidden = false
    }
    
}

