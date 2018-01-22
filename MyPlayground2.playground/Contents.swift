var toDo:Array<String> = ["점심식사", "커피한잔", "도서관"]
var inProgress:[String] = ["Let's Swift"] //작업하고있는 내용은 항상 바뀔 수 있으니까
// / 위에 있는 두 줄은 형식만 다를 뿐이야 같은 거임 근데. var done = [] 이 표현은 지양.. 타입이 안 써있잖아..
///var done = ["아침식사"] 이건 가능해


toDo.first
toDo.last

//오늘 할 일 중에, "스위프트 복습" 넣어 let toDo 를 var toDo로 바꿔

toDo.append("스위프트 복습")

///done.apeend(inProgress[0])

inProgress.removeAll()
inProgress.append(toDo[0])
toDo.removeFirst()

print(toDo)
print(inProgress)

//완료된 작업을 보관하는 배열을 만들고 완료된 작업을 넣으세요

var fin:Array<String> = []
var almostFin:[String] = ["미세먼지 먹기"]

fin.append(almostFin[0])
almostFin.removeAll()

print (fin)
print (almostFin)

fin.append("눈알세척")
