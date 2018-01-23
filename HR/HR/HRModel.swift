//
//  HRModel.swift
//  HR
//
//  Created by 권나현 on 2018. 1. 22..
//  Copyright © 2018년 권나현. All rights reserved.
//

import Foundation


class Store {
    let furnName: String
    
    init (name:String){
        self.furnName = name
     
        
    }
}

class HRModel{
    var arrayList:[Store] = []
    
    init() {
        let store = Store(name: "침대")
        
        self.arrayList.append(store)
        self.arrayList.append(Store(name:"냉장고"))
        self.arrayList.append(Store(name:"테이블"))
        self.arrayList.append(Store(name:"의자"))
        self.arrayList.append(Store(name:"장식장"))
        self.arrayList.append(Store(name:"인테리어소품"))
    
}
}
