//
//  ViewController.swift
//  HelloiPhone
//
//  Created by 권나현 on 2018. 1. 19..
//  Copyright © 2018년 권나현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var textFieldHello: UITextField!
    
    @IBAction func touchGo(_ sender: Any) {
        let hello = "반갑다, \(self.textFieldHello.text!) 자식아!"
        
        self.labelHello.text = hello
        
        print("가즈아~!!!")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

