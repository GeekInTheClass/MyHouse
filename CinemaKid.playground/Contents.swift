import Foundation
import UIKit

class Movie {
    let actor:[String] = []
    let title:String
    let desc: String
    let genre:[String]
    let director:[Director]
    let releaseDate:Date
    let theater:[String]
    let production:String
    let poster:[UIImage]
    
    //특별히 초기화를 하기위한     initializer method >>unit
    init(actor:[String],title:String,desc:String,genre:[String],director:[Director],releaseDate:Date,theater:[String], production:String, poster:[UIImage]){
        self.actor = actor;
        self.title = title;
        self.releaseDate = releaseDate
        self.theater = theater;
        self.production = production;
        self.poster = poster
        
    }
}

class Director {
    let name : String
    var bOb:[Movie]? //값이 안들어갈 수도 있음 ? : optional value 이걸 꼭 명시해줘야함 값이 바뀌거나 안 바뀌면 var/let
    init(name:String,bOb:[Movie]){
        self.name = name
        self.bOb = bOb
    }
    
}
let directorJJW = Director(name:"장준환",bOb:[])

let movieSaveTheEarth = Movie(actor: ["신하균"], title: "지구를지켜라", desc: "지구를 지켰데", genre: ["SF","스릴러"], director: [directorJJW], releaseDate: Date(), theater: ["롯데시네마"], production: "디디디", poster: [UIImage.init(named:"1987")!])

directorJJW.bOb = [movieSaveTheEarth]

let movie1987 = Movie.init(actor: ["하정우","유해진"],
                           title: "1987",
                           desc: "남영역에서...",
                           genre: ["드라마"],
                           director: [directorJJW] ,
                           releaseDate: Date(), //생성하는 시점의 시간을 알 수 있음
                           theater: ["CGV","MegaBox"],
                           production: "New",
                           poster: [UIImage.init(named:"1987")!])
print(movie1987.director[0].name)
print(movie1987.director[0].bOb![0].title)
