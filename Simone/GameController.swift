//
//  GameController.swift
//  Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

//=============================================
import UIKit
//=============================================
class GameController: UIViewController {
    //---------------------------------
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
    @IBOutlet weak var but5: UIButton!
    @IBOutlet weak var but6: UIButton!
    @IBOutlet weak var but7: UIButton!
    @IBOutlet weak var but8: UIButton!
    @IBOutlet weak var but9: UIButton!
    @IBOutlet weak var scoreKeeper: UILabel!
    //------------
    var arrOfGameColors: [UIButton]!
    var simoneBrain : SimoneBrain!
    
    //---------------------------------
    override func viewDidLoad() {
        //------------
        super.viewDidLoad()
        //------------
        arrOfGameColors = [but1, but2, but3, but4, but5, but6, but7, but8, but9]
        simoneBrain = SimoneBrain(gameColors: arrOfGameColors)
        simoneBrain.addRandomColorToArray()
        
        //------------Appelle la méthode "start game"
        simoneBrain.startGame()
        
        //------------ Initialise "scoreKeeper"
        scoreKeeper.text = simoneBrain.scoreKeeper
        simoneBrain.loadArrayForComparison()
        
        //------------
    }
    
    
     //---------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //---------------------------------
    
    @IBAction func buttonManager(_ sender: UIButton) {
        
        if !simoneBrain.userTurnToPlay{
            return
        }
        if simoneBrain.arrCopyOfRandomColorsToCompare.count == 0 {
            simoneBrain.arrCopyOfRandomColorsToCompare = simoneBrain.arrRandomColors
        }
        if !simoneBrain.verification(arrOfGameColors[sender.tag]){
            performSegue(withIdentifier: "wrong", sender: nil)
        }
        simoneBrain.scoreKeeperCounter! += 1
        scoreKeeper.text = "\(simoneBrain.scoreKeeperCounter!)"
    
    
    }
    //---------------------------------
    
    
    
    
    
    
    
    //---------------------------------
    
}//fin class GameController
//=============================================
