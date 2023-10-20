//
//  ViewController.swift
//  RTestF
//
//  Created by imrajeshcoder on 10/20/2023.
//  Copyright (c) 2023 imrajeshcoder. All rights reserved.
//

import UIKit
import RTestF

class ViewController: UIViewController {

    let objDP = DatePickerHelper()
    
    @IBOutlet weak var txtDatePicker: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        objDP.doneClicked = { [self] selectedDate in
            txtDatePicker.text = selectedDate.asString(dateFormat: DateFormatt.AppDateFormate.rawValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAction_DatePickerClick(_ sender: UIButton) {
        objDP.showDatePicker(txt: txtDatePicker)
    }
    
}

enum DateFormatt: String{
    case AppDateFormate = "MMM dd, YYYY"
}

extension Date{
    func asString(dateFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat

        return dateFormatter .string(from: self)
    }
}
