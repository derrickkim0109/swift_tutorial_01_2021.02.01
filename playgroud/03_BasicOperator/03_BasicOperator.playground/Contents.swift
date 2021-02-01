import UIKit

// Tuple을 사용한 할당 연산자

let (x1, y1) = (1,2)
print(x1,y1)

// 서로 다른 type이여도 상관이 없다.
let (x2, y2) = (3, "kim")
print(x2, y2)


// 사칙 연산
print(1 + 2)
print(3 - 2 )
print(4 * 3)
print(10 / 3) //  정수
print(10.0 / 3.0) // 실수
print(9 % 4) // 나머지

// 단항 음수 연산자
let one = 1
let minusOne = -one
let plusOne = -minusOne
print(one, minusOne, plusOne)

// 비교 연산자
1 == 1
2 != 1
1 > 2
1 >= 2
2 <= 1

let name = "world"
if name == "world"{
    print("Hello World")
}else{
    print("I'm sorry \(name), but I don't recognize you.")
}



// Tuple로 비교 연산자  -> true 가 나올때 까지 다 보고 결정 된다.
// 첫번째 숫자 비교
(1, "zebra") < (2, "apple")
// 두번째, 3 = 3 이니까 apple < bird -> abc순
// 같은 거나 작으면 비교 안하고 다음 옆에 있는걸로 한다.
(3, "apple") < (3, "bird")

(4,"dog") == (4, "dog")
("blue", -1) < ("purple", 1)

// bool 값을 넣는건 비교 대상이 아니라서 안됨
// ("blue", false) < ("purple", true)

// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = true
// true 50 , false 20
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)

// NIL 병합 연산자
let defaultColarName = "red"

// var userDefineColorName = String // nil 값을 수용 못한다

// nil 값 수용 하기 위해 ? 를 옆에 단다.
var userDefineColorName : String? // ? nil

// userDefineColorName 값을 아무것도 입력안하면 defaultColarName값으로
// 쓰겠다는 의미
var colorNameToUse = userDefineColorName ?? defaultColarName
print(colorNameToUse)

// optional 변수 이기 때문에 nil 도 수용하고 green도 수용한다.
userDefineColorName = "green"
colorNameToUse = userDefineColorName ?? defaultColarName
print(colorNameToUse)


// 범위 연산자
// 1...10 -> 1 ~ 10 까지 라는 의미
// A...B -> A 부터 B 까지라는 의미!!!
for i in 1...10{
    print(i)
}

// 1에서 10까지의 합 구하기
var sum1 : Int = 0
for j in 1...10{
    sum1 += j
}

print("1 ~ 10까지의 합계:",sum1)

// 구구단
for i in 1...10{
    print("5 X \(i) = \(i*5)")
}

// for문을 이용하여 인원번호와 이름 출력하기(인원번호는 1번부터)
let names = ["Anna", "Derrick", "Brian", "Jack"]

for i in 0..<names.count{
    print("Person \(i+1) is called \(names[i]) ")
}
// Person 1 is called Anna

// 배열을 다른 배열로 할당후 출력하기
let a1 = [-1, -2, -3, 0, 1, 2, 3]
// [n..] n부터 끝까지
let b1 = a1[2...]
print(b1)
print(b1.count)
print(a1[1])
print(b1[2]) // b1을 출력하고자 하면 a1의 길이와 순서에 맞추어야 출력된다.

print("--------")

for i in 2..<a1.count{
    print(b1[i])
}

let b2 = a1[...2]
let b3 = a1[..<2]
print(b3)

print(names)

print("------")
for name in names[2...] {
    print(name)
}
print("-------")
for name in names[...2]{
    print(name)
}
print("--------")
for name in names[..<2] {
    print(name)
}
print("--------")

//max = 5 min = infinity
let range = ...5
print(range)
range.contains(7)
range.contains(4)
range.contains(-1)
range.contains(-100)


// 논리 부정 연산자
let allowEntry = false
if !allowEntry {
    print("Access denied")
}

// 논리 곱 연산자
let enterDoorCode = true
let passedRetinaScan = false

//AND
if enterDoorCode && passedRetinaScan {
    print("Welcome")
}else{
    print("Access denied")
}

//OR
if enterDoorCode || passedRetinaScan {
    print("Welcome")
}else{
    print("Access denied")
}


