//
//  ViewController.swift
//  Vocabulary
//
//  Created by İzzet Kara on 25.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var nameLabel = [String] ()
    var turkNames = [String] ()
    var answerLabel = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        nameLabel.append("I")
        nameLabel.append("You")
        nameLabel.append("They")
        
        turkNames.append("Ben")
        turkNames.append("Sen")
        turkNames.append("Onlar")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = nameLabel[indexPath.row]
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        answerLabel = turkNames[indexPath.row]
        performSegue(withIdentifier: "secondVC", sender: nil)
        
    }
    

    override func prepare(for segue:UIStoryboardSegue, sender: (Any)?) {
            if segue.identifier == "secondVC" {
        let destinationVC = segue.destination as! SecondViewController
                destinationVC.nameLabel = answerLabel
            }
        }
}


