//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Mudhagoni,Sai Kumar on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crsNum: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var crsSemster: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01","44555", "Network Security", "Fall 2022"],
    ["img02", "44643", "ios", "Spring 2022"],
    ["img03", "44656", "Streaming Data", "Summer 2022"]
    ]
    
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // load the details (image, num, title, and sem) of the (0th element) first course
        
        updateUI(imageNumber);
        previousButton.isEnabled = false;
        
        // preious button is disabled

    }


    @IBAction func previousButtonClicked(_ sender: Any) {
        
        // next button should be enabled
        nextButton.isEnabled = true
        //update the UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //if the course positon is at the 0th position, previous button should be disabled.
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
        
    }
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        // when the next button is clicked the UI should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        // previous button should be enabled
        previousButton.isEnabled = true
        
        // once reaching the end of the array the next button should be disabled
        
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
    }

func updateUI(_ imageNumber: Int){
    imageViewOutlet.image = UIImage(named:courses[imageNumber][0])
    crsNum.text = courses[imageNumber][1]
    crsTitle.text = courses[imageNumber][2]
    crsSemster.text = courses[imageNumber][3]
}
                                                  }

