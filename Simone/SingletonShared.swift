//
//  SingletonShared.swift
//  Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//


//=============================================
import UIKit
//=============================================
class SingletonShared{
    //---------------------------------
    var highscore : String!
    var scoreForWrongInterface: String!
    var savedHighscore = UserDefaults.standard
    static let singletonSharedInstance = SingletonShared()
    
    //---------------------------------
    init() {
        //savedHighscore.removeObject(forKey: "score")
        manageScore()
      //   saveDefaultIfNeeded()
    }
    
    //---------------------------------
    func manageScore() {
        if let hs = savedHighscore.object(forKey: "score"){
            highscore = String (describing: hs)
        } else {
            savedHighscore.setValue("0", forKey: "score")
        }
    }
 
    //---------------------------------
    func saveDefaultIfNeeded() {
        if savedHighscore.object(forKey: "score") == nil{
            savedHighscore.setValue("0", forKey: "score")
        }
    }
    //---------------------------------
    func saveScore(_ aScore: String) {
//        let a = Int(aScore)
//        let b = savedHighscore.object(forKey: "score") as? String
//        let c = Int (b!)
//        if a! > c! {
//            savedHighscore.setValue(aScore, forKey: "score")
//        }
        
        let a = aScore
        let b = highscore
        if a > b! {
            savedHighscore.setValue(aScore, forKey: "score")
            highscore = a
        }
        
        
    }

    
    //---------------------------------
    func resetHighscore() {
        savedHighscore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
    }

    //---------------------------------

    
    
}//fin class SingletonShared
//=============================================
