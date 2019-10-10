//
//  SettingsViewController.swift
//  Planets
//
//  Created by patelpra on 10/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var showPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard isViewLoaded else { return }
        
        let userDefaults = UserDefaults.standard
        showPlutoSwitch.isOn = userDefaults.bool(forKey: .showPlutoKey)
        
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(showPlutoSwitch.isOn, forKey: .showPlutoKey)
    }

}
