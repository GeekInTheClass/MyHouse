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
        self.kind = kind
        self.name = name
        self.width = width
        self.height = height
        self.length = length
        self.like = like
        
}
    let kwon = Home(address: "서울특별시 마포구 신공덕동", structure: [structure])
    let structure = Structure(structImg: [UIImage.init(named:"나현이네")!], room: [livingroom, kitchen])
    let livingroom = Space(spaceName: "livingroom", horizontal: 3000, vertical: 4000, hight: 2000, furniture: [bed,table])
    let kitchen = Space(spaceName: "kitchen", horizontal: 2000, vertical: 1000, hight: 2000, furniture: [table])
    let table = Furniture(kind: "양문형냉장고", name: "아주 차가운 냉장고", width: 100, height: 200, length: 50, like: false)
    let bed = Furniture(kind: "목조침대", name: "숙면이솔솔침대", width: 300, height: 70, length: 200, like: false)
}






