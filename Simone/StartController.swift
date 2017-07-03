//
//  ViewController.swift
//  Simone
//
//  Created by eleves on 2017-06-12.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

//=============================================
import UIKit
//=============================================
class StartController: UIViewController {
    //---------------------------------
    @IBOutlet weak var highscoreLabel: UILabel!
    //---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //---------------------------------
        
        highscoreLabel.text = "HIGHSCORE : \(SingletonShared.singletonSharedInstance.highscore)"
    }
    //---------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //---------------------------------
    
    
}//fin class StartController
//=============================================
