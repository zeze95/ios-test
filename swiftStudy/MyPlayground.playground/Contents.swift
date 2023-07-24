import UIKit

var age : Int?

var nickname: String?
// nil 이 들어갈수도 있는 상태
print(nickname)
// 이름이 없는 상태로 실제 앱에서는 앱이 종료될수도 있음

nickname  = "고래밥"

print(nickname) // optional()로 나옴

print(nickname!) // 강제 해제 시킴 절대로 값이 있을때만 사용햐여야함

if nickname!.count >= 3 {
    print("\(nickname!)입니다.")
}else{
    print("3글자 이상 작성해주세요")
}
    // 조건문으로 nil 판단하여 해결

if nickname == nil {
    print("다시 입력하세여")
}else{
    print("\(nickname!)입니다")
}

// 상수에 넣어서 조건문

if let name = nickname, let age = age {
    print("\(name),\(age)")
}
    // 닉네임이 옵셔널 타입이지만 닐이 아닌 경우에는 네임으로 옵셔널이 벗겨져서 담겨지기에
// 느낌표나 별도 다른 것을 하지 않고도 가능
// 옵셔널 바인딩이라고 함 ㅎ
// 변수와 상수를 같은 이름으로 쓰기도함



// swift 5.7 if let shortened
//if let nickname {
//    print("\(nickname)")
//}
// var 변수를 그냥 같은 이름이라도 줄이는 것 가능

func testOptional(){
    if let nickname{
        print("\(nickname)입니다.")
        // 중괄호 안에서만 쓸수 있음
    }
    guard let nameNew = nickname else {
        print("nil이라 오륜데욥")
        return /// nil일때만 else 구문이 실행되기 떄문에
        ///뒤에 함수 코드는 실행되지 않도록 리턴으로 함수를 종료시킴
        ///early exit
        // 중괄호 밖에서도 사용 가능하여 하단에 프린트가 됨
    
    }
    print(nameNew)
    // 만약 닉네임이 nil이라 못담으면 어떻게 할건지 적는 else
}

func searchWords(){
    let example: String? = "신조어"
    //1
    if example != nil {
    
    }
    //2
    if let example {
        print(example.uppercased())
    }
    
    // 3
    guard let example = example else{
        print("에러")
        return
    }
    
   
}
