//
//  ViewController.swift
//  predictions_app
//
//  Created by Andrey Nenoglyadov on 12/23/19.
//  Copyright © 2019 Andrey Nenoglyadov. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    var arrayWords = [String]()


    @IBOutlet weak var labelWords: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readFromFile()
        randomizePredictions()
       
    }

    func readFromFile() {
        if let path = Bundle.main.path(forResource: "words", ofType: "txt"){
            if let textWords = try? String(contentsOfFile: path){
                arrayWords = textWords.components(separatedBy: "\n")
            }
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 0.8) {
            self.randomizePredictions()
        }
    }
    
    func  randomizePredictions() {
        let randomSymbol = Int.random(in: 0...arrayWords.count - 2)
        labelWords.text = arrayWords[randomSymbol]
    }
    
    func gradientAlpha() {
        UIView.animate(withDuration: 1.0, delay: 1.5, options: [], animations: {
            self.
        })
    }

}





