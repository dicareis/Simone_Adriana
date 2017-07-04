//  SimoneBrain.swift
//  Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

//=============================================
import Foundation
//=============================================
class SimoneBrain{
    //---------------------------------
    func getRandomNumber (from f: Int, to t: Int) -> Int {
        
        //le UInt32 cast le Int en un entier de 32 bits
        let from = UInt32(f)
        let to = UInt32(t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int (randomNumber)
    }
    
    
    
    
    //---------------------------------
    
}//fin class SimoneBrain
//=============================================
