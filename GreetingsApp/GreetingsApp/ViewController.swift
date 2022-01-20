//
//  ViewController.swift
//  GreetingsApp
//
//  Created by Mudhagoni,Sai Kumar on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ButtonClicked(_ sender: UIButton) {
        // Read the name from the text field
        var enteredName = nameOutlet.text!
        // change the display label as Hello, name!
        displayLabel.text = "Hello, \(enteredName)!"
    }
}

