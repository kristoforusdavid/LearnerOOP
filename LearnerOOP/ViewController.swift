//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Kristoforus David on 15/05/19.
//  Copyright © 2019 Kristoforus David. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var learnerNameLabel: UILabel!
    
    @IBOutlet weak var learnerAgeLabel: UILabel!
    
    @IBOutlet weak var learnerGenderLabel: UILabel!
    var learnerInstance:LearnerModel?
    var facilInstance:FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "David", ageLearner: 24, genderLearner: "Male", imageProfileLearner: "")
        facilInstance = FacilitatorModel(facilName: "Kristoforus", facilAge: 24, facilGender: "Male", facilImageProfile: "", facilPerk: "Apa aja boleh")
        updateUI()
    }
    
    func updateUI(){
        if let instance = facilInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
  
    }

    @IBAction func button(_ sender: Any) {
        if let instance = facilInstance {
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
    }
}

