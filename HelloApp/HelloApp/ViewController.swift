//
//  ViewController.swift
//  HelloApp
//
//  Created by Mudhagoni,Sai Kumar on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var IBoutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        var enteredName = IBoutlet.text!
        label.text = "Hello, \(enteredName)"
    }
    


}

