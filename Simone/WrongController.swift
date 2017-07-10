//
//  WrongController.swift
//  Simone
//
//  Created by eleves on 2017-07-03.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//
//=============================================
import UIKit
//=============================================
class WrongController: UIViewController {
    //---------------------------------
    @IBOutlet weak var scoreLabel: UILabel!
    //---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = SingletonShared.singletonSharedInstance.scoreForWrongInterface
    }
    //---------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
}//fin de la class
//=============================================
