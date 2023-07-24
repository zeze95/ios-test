import Foundation

func randomWords() ->String {
    
    let list = ["뉴진스", "아이유", "좋댓구알", "이생망"]
    let random = list.randomElement()
    print((random ?? "굿"))
    return list.randomElement()!
}


var number = [1,2,3,4,5,6,7,8,9,0]
number.shuffled() // 반환값 있음 배열은 유지됨
print(number)
number.shuffle()    //반환값 없음 배열 유지 안됨
print(number)

var setNumber: Set = [1,2,3,5,0,6,6,4,8]

print(setNumber.subtracting([3]))
// 뺴기
// subtract
print(setNumber.subtract([1]))


var nickname = "고래밥"

nickname.append("맛있다")
nickname.appending("짱맛") //    프린트에 찍히지 않음

print(nickname)
