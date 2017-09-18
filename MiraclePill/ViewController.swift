//
//  ViewController.swift
//  MiraclePill
//
//  Created by Tiago Magalhães on 18/09/2017.
//  Copyright © 2017 Tiago Magalhães. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var pill: UIImageView!
    @IBOutlet weak var pillBrand: UILabel!
    @IBOutlet weak var pillPrice: UILabel!
    
    
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    @IBOutlet weak var successImage: UIImageView!
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        buyButton.isHidden = true
        statePicker.isHidden = false
    }
    
    @IBAction func buyButtonPressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        buyButton.isHidden = true
        stateButton.isHidden = true
        pill.isHidden = true
        pillBrand.isHidden = true
        pillPrice.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameField.isHidden = true
        addressLabel.isHidden = true
        addressField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        stateLabel.isHidden = true
        successImage.isHidden = false
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
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryField.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
        buyButton.isHidden = false
    }

}

