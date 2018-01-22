//
//  DataCenter.swift
//  
//
//  Created by 권나현 on 2018. 1. 22..
//

import Foundation

let dataCenter = DataCenter()

class DataCenter: NSObject {
    var movies:[Home]=[]
    
    override init() {
        super.init()
        Home = createDummy()
    }
    
    func createDummy() -> [Home]{
        let Kwon = Home(address: "서울특별시 마포구 백범로205", structure: [KaptStructure])
        let Yoon = Home(address:"대전광역시 서구 둔산로225", structure:[YaptStructure])
        let Kim = Home(address:"경기도 일산서구 강선로33", structure:[KIaptStructure])
        let YaptStructure = Structure(structImg:[UIImage.init(named:"윤영이네")!],room:[YbedRoom,YlivingRoom])
        let KaptStructure = Structure(structImg: [UIImage.init(named:"나현이네")!], room: [Klivingroom, Kkitchen])
        let KIaptStructure = Structure(structImg: [UIImage.init(named:"지연이네")!],room: [KIoneroom])
        let KIoneroom = Space(spaceroom:"원룸",horizontal:1000,vertical:2000,height:400,furniture:[bSofa,dTable])
        let YbedRoom = Space(spaceName:"안방", horizontal:1000, vertical:5000, height:400,furniture:[aBed,bSofa])
        let KlivingRoom = Space(spaceName:"거실", horizontal:100, vertical:1000, height:230,furniture:[bSofa])
        let Ylivingroom = Space(spaceName: "거실", horizontal: 300, vertical: 4000, height: 200, furniture: [bBed,aRefrigrator])
        let Kkitchen = Space(spaceName: "부엌", horizontal: 200, vertical: 1000, height: 200, furniture: [aRefrigrator])
        let aRefrigrator = Furniture(kind: "양문형냉장고", name: "아주차가운냉장고", width: 100, height: 200, length: 500, like: false)
        let bBed = Furniture(kind: "더블침대", name: "숙면이솔솔침대", width: 300, height: 700, length: 200, like: false)
        let aBed = Furniture(kind: "싱글침대", name: "에이스르르침대", width:700 , height:150, length:180, like:false)
        let bSofa = Furniture(kind: "쇼파", name: "이렇게쉬어라", width:400 , height:150, length:400, like:true)
        let dTable = Furniture(kind: "티테이블", name:"차를 꿀꺽",width:100, height:200, length:200, like: false )
        
        }
        
    }
    return()
}


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
    let height:Double
    let furniture:[Furniture]
    
    init(spaceName:String,horizontal:Double,vertical:Double,height:Double,furniture:[Furniture]){
        
        self.spaceName = spaceName; self.horizontal = horizontal; self.vertical = vertical; self.height = height; self.furniture = furniture
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
    
    
}
