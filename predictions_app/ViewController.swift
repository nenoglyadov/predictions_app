//
//  ViewController.swift
//  predictions_app
//
//  Created by Andrey Nenoglyadov on 12/23/19.
//  Copyright © 2019 Andrey Nenoglyadov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayWords = [String]()

    @IBOutlet weak var labelWords: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        readFromFile()
        randomizeBackgroundColor()
       
    }

    func readFromFile() {
        if let path = Bundle.main.path(forResource: "words", ofType: "txt"){
            if let textWords = try? String(contentsOfFile: path){
                arrayWords = textWords.components(separatedBy: "\n")
            }
        }
    }
    
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.4) {
            self.randomizeBackgroundColor()
        }
    }
    
    
    func randomizeBackgroundColor() {
        let randomSymbol = Int.random(in: 0...arrayWords.count - 1)
        labelWords.text = arrayWords[randomSymbol]
    }

}

