//
//  app_myHouse.swift
//  
//
//  Created by 권나현 on 2018. 1. 22..
//

import Foundation
import UIKit
import Foundation

class Home {
    
    let address:String
    let structure:[Structure]
    init(address:String, structure:[Structure]){
        self.address=address; self.structure=structure;}
}


class Structure {
    
    let structImg:[UIImage]
    let room:[Space]
    init(structImg:[UIImage],room:[Space]) {
        self.structImg = structImg; self.room = room
    }
}

class Space{
    
    let spaceName:String
    let horizontal:Double
    let vertical:Double
    let hight:Double
    let furniture:[Furniture]
    
    init(spaceName:String,horizontal:Double,vertical:Double,hight:Double,furniture:[Furniture]){
        
        self.spaceName = spaceName; self.horizontal = horizontal; self.vertical = vertical; self.hight = hight; self.furniture = furniture
    }
}

class Furniture{
    
    let kind:String
    let name:String
    let width:Double
    let height:Double
    let length:Double
    let like:Bool
    
    init(kind:String,name:String,width:Double,height:Double,length:Double,like:Bool){
        self.kind = kind; self.name = name; self.width = width; self.height = height
        self.length = length; self.like = like
        
    }
    let Kwon = Home(address: "서울특별시 마포구 백범로 205", structure: [structure])
    let Yoon = Home(address:"대전광역시 서구 둔산로225", structure:[aaptStructure])
     let aaptStructure = Structure(structImg:[UIImage.init(named:"윤영이네")!],room:[bedRoom,livingRoom])
    let baptstructure = Structure(structImg: [UIImage.init(named:"나현이네")!], room: [livingroom, kitchen])
    let bedRoom = Space(spaceName:"안방", horizontal:1000, vertical:500, hight:230,furniture:[aBed,bSofa])
    let livingRoom = Space(spaceName:"거실", horizontal:1000, vertical:1000, hight:230,furniture:[bSofa])
    let livingroom = Space(spaceName: "livingroom", horizontal: 3000, vertical: 4000, hight: 2000, furniture: [bBed,atable])
    let kitchen = Space(spaceName: "kitchen", horizontal: 2000, vertical: 1000, hight: 2000, furniture: [table])
    let atable = Furniture(kind: "양문형냉장고", name: "아주 차가운 냉장고", width: 100, height: 200, length: 50, like: false)
    let bBed = Furniture(kind: "목조침대", name: "숙면이솔솔침대", width: 300, height: 70, length: 200, like: false)
    let aBed = Furniture(kind: "싱글침대", name: "에이스침대", width:70 , height:15, length:180, like:false)
    let bSofa = Furniture(kind: "1인용 쇼파", name: "이케아", width:40 , height:150, length:40, like:true)
   
   
    
}
