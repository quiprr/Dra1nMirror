//
//  PreferenceSwitch.swift
//  dra1n
//
//  Created by Charlie While on 08/09/2020.
//

import UIKit

class PreferenceSwitch: UISwitch {
    
    @IBInspectable private var prefsName: String!
    @IBInspectable private var notificationName: String! = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
         self.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        
        if !prefsName.isEmpty {
            self.isOn = CepheiController.shared.def.bool(forKey: prefsName, default: self.isOn)
        }
    }
    
    @objc func switchChanged() {
        if !prefsName.isEmpty {
            CepheiController.shared.set(key: prefsName, object: self.isOn)
        }
        
        if !notificationName.isEmpty {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationName), object: nil)
        }
    }
}

