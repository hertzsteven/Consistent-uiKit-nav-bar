//
//  ViewController.swift
//  Consistent uiKit nav bar
//
//  Created by Steven Hertz on 4/17/24.
//

import UIKit


class ViewController: BaseViewController {
    override func viewDidLoad() {
        
        // Set your specific title text here before calling super.viewDidLoad()
        let titleTexts = ["Lander Torah", "Rabbi Moshe Bamberger"]
        let nbr = Int.random(in: 0..<2)

        self.titleText = titleTexts[nbr] 
        super.viewDidLoad()
        
        // Other custom setup for this view controller
    }
}
