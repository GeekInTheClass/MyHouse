var myValue = 42

myValue = 50

let myConst = 42

//myConst = 77 // 이건 변수 아니야 상수야 그래서 못바꾼다규
// 가급적이면 let 쓰기

let valueInt = 70
let valueDouble = 70.0

let valueDouble2:Double = 70

//let label = "가로 크기는 = "
//let width = 94

//let widthLabel = label + String(width) //숫자를 문자열로 전환


let apples = 3
let oranges = 5

let appleSummery = "I have \(apples) apples."
let fruitSum = "I have \(apples + oranges) pieces of fruit."
//변수값 변환 원하는 타입의 인스턴스를 ..convert

let urlServer = "http://www.ebadaq.com"

print(urlServer.count)

urlServer.hasPrefix("http://") //http로 시작하는 거 맞으니까 결과 값이 true로 나온다
urlServer.hasSuffix("jp") //jp  일본 사이트 아니니까 false가 결과로 나온다

let label =  "Thei width is "
let width = 94
//let widthLabel = label + String(width)

//width에 3.5를 더해야 한다면 어떻게 해야할까?
let widthLabel = label + String(Double(width)+3.5)



