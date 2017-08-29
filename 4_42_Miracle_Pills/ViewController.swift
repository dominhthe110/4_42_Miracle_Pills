//
//  ViewController.swift
//  4_42_Miracle_Pills
//
//  Created by Minh The on 8/28/17.
//  Copyright © 2017 Minh The. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var quanhuyenPicker: UIPickerView!
    @IBOutlet weak var chonPickerBtn: UIButton!
    
    let quanhuyen = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "Tân Bình", "Tân Phú", "Phú Nhuận", "Nhà Bé", "Bình Chánh", "Hóc Môn", "Chủ Chi", "Bình Thạnh", "Gò Vấp", "Thủ Đức", "Bình Tân", "Cần Giờ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        quanhuyenPicker.dataSource = self
        quanhuyenPicker.delegate = self
        
        
        }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func chonButtonPressed(_ sender: Any) {
        quanhuyenPicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quanhuyen.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quanhuyen[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chonPickerBtn.setTitle(quanhuyen[row], for: UIControlState.normal)
        quanhuyenPicker.isHidden = true
    }
}

