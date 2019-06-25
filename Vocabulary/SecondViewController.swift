//
//  SecondViewController.swift
//  Vocabulary
//
//  Created by İzzet Kara on 25.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!

    var nameLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = nameLabel
       
    }
    
    
   

}
