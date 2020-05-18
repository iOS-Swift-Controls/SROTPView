//
//  ViewController.swift
//  Example
//
//  Created by admin on 11/22/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import SROTPView

class ViewController: UIViewController {

    @IBOutlet weak var otpView: SROTPView! //dont use SROTPField use SROTPView
    
    var enteredOtp: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        otpView.otpTextFieldsCount = 6
        otpView.otpTextFieldActiveBorderColor = UIColor.white
        otpView.otpTextFieldDefaultBorderColor = UIColor.green
        otpView.otpTextFieldFontColor = UIColor.green
        otpView.activeHeight = 4
        otpView.inactiveHeight = 2
        otpView.otpType = .Rounded //.Rounded for round
        otpView.otpEnteredString = { pin in
            print("The entered pin is \(pin)")
        }
        otpView.setUpOtpView()
    }
       
    override func viewDidAppear(_ animated: Bool) {
               otpView.initializeUI()
        }
    


}

