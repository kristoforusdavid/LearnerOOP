//
//  LearnerModel.swift
//  LearnerOOP
//
//  Created by Kristoforus David on 15/05/19.
//  Copyright © 2019 Kristoforus David. All rights reserved.
//

import Foundation

class LearnerModel {
    var name: String
    var age: Int
    var gender: String
    var imageProfile: String
    
    init(nameLearner: String, ageLearner: Int, genderLearner: String, imageProfileLearner: String){
        self.name = nameLearner
        self.age = ageLearner
        self.gender = genderLearner
        self.imageProfile = imageProfileLearner
        
    }
    
    func increaseAge(){
        self.age = age + 1

        }
  
    func decreaseAge(){
        self.age -= 1
    }
}
