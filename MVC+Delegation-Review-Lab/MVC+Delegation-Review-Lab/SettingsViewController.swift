//
//  SettingsViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Krystal Campbell on 8/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var currentFontSize: CGFloat = 12

    @IBOutlet weak var changeFontSize: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBOutlet weak var fontSize: UILabel!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        currentFontSize = CGFloat(sender.value)
        updateLabel()
        stepperOutlet.value = Double(sender.value)
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        currentFontSize = CGFloat(sender.value)
        updateLabel()
        sliderOutlet.value = Float(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func updateLabel() {
        changeFontSize.font = UIFont.systemFont(ofSize: currentFontSize)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
