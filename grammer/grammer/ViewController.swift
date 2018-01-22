//
//  ViewController.swift
//  grammer
//
//  Created by 권나현 on 2018. 1. 4..
//  Copyright © 2018년 권나현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let planetarySystem1 = PlanetarySystem(name: "Solar System")
    
    let numberOfPlanets = 8
    let diameterOfEarth = 24859.82 // In miles from pole to pole.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        start()
        
    }
        
    func start(){
        firstTextView.text = "Welcome to our \(planetarySystem1.name)! here are \(numberOfPlanets) plantes to explore. You are currently on Earth, which has a circumstance of \(diameterOfEarth) miles."
        
        myLabel.text = "What's your name?"
        secondTextView.text = "Shall I randomly choose a planet for you to visit? (Y/N)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var firstTextView: UITextView!
    
    @IBOutlet weak var secondTextView: UITextView!
    @IBOutlet weak var myLabel: UITextView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBAction func firstButton(_ sender: Any) {
        let name = firstTextField.text!
        
        myLabel.text = "Nice to meet you \(name)"
    }
    
    @IBAction func secondButton(_ sender: Any) {
        if (secondTextView.text == "Y"){
            secondTextView.text = "OK! Traveling to... "
        }
        else if ( secondTextView.text == "N") {
            secondTextView.text = "OK name the planet you would..."
        }
        else {
            secondTextView.text = "Sorry, I didin't get that."
        }
    }
    
}

