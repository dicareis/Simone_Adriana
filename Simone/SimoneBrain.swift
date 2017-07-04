//  SimoneBrain.swift
//  Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

//=============================================
import Foundation
import UIKit
//=============================================
class SimoneBrain{
    //---------------------------------
    var colorTracker: Int!
    var userTurnToPlay: Bool!
    var scoreKeeperCounter: Int!
    var theScoreKeeper = ""
    var randomButtonChooser: UIButton!

    func getRandomNumber (from f: Int, to t: Int) -> Int {
        
        //le UInt32 cast le Int en un entier de 32 bits
        let from = UInt32(f)
        let to = UInt32(t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int (randomNumber)
    }
    
    //---------------------------------
    func startGame (_ arrOfRandomButtons: [UIButton]){
        //------------
        colorTracker = 0
        //------------ Timer 1 seconde pour exécuter le methode "buttonAlphaManager"
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false){ _ in
            self.buttonAlphaManager(arrOfRandomButtons)
        }
        //------------
    
    }
    
    //---------------------------------
    func buttonAlphaManager (_ arrOfRandomButtons: [UIButton]){
        
        if colorTracker < arrOfRandomButtons.count{
            //------------
            userTurnToPlay = false
            scoreKeeperCounter = 0
            scoreKeeper = ""
            randomButtonChooser = arrOfRandomButtons[colorTracker]
            randomButtonChooser.alpha = 0.2
            colorTracker! += 1
            //------------
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){ _ in
                self.resetAlphaForButtons(arrOfRandomButtons)
            }
            //------------
        } else {
            userTurnToPlay = true
        }
        
        
    }
    
    //---------------------------------
    func resetAlphaForButtons (_ arrOfRandomButtons: [UIButton]){
        //------------
        randomButtonChooser.alpha = 1.0
        //------------
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){ _ in
            self.buttonAlphaManager(arrOfRandomButtons)
        }
        //------------
    }
    
    //---------------------------------
    var scoreKeeper: String?{
        
        get{
            return theScoreKeeper
        }
        set {
            theScoreKeeper = newValue!
        }
        
    
    
    }
    
    
    //---------------------------------
    
}//fin class SimoneBrain
//=============================================
