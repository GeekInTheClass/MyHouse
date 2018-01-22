//
//  ViewController.swift
//  HelloWorld
//
//  Created by 권나현 on 2018. 1. 3..
//  Copyright © 2018년 권나현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBackgroundColorToBlack(_ sender: UIButton) {
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func changeToWhite(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
    }
    
    @IBAction func changeToBlue(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
}

