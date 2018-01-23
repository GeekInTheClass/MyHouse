//
//  LineUpTableViewController.swift
//  HR
//
//  Created by 권나현 on 2018. 1. 22..
//  Copyright © 2018년 권나현. All rights reserved.
//

import Foundation
import UIKit

class LineUpTableViewController : UITableViewController {
    
    //
    let modelHR = HRModel()
    
    //>엄마아빠코드를 재 정의할 때 앞에 오버라이드라고 붙여줘야해!
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelHR.arrayList.count
        //모델속 배열의 개수
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 의 텍스트 레이블에 문자열 넣기26줄
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let store = self.modelHR.arrayList[indexPath.row]
        
        
        cell.textLabel?.text = store.furnName
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vcDetail = segue.destination as! DetailViewController
        
        let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)
        
        vcDetail.selectedStore = self.modelHR.arrayList[(indexPath?.row)!]
    }
    
}
