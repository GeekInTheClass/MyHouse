//
//  DetailViewController.swift
//  HR
//
//  Created by 숙명여자대학교 on 2018. 1. 22..
//  Copyright © 2018년 권나현. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedStore:Store!
    
    @IBOutlet weak var labelName:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelName.text = self.selectedStore.furnName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
