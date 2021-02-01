import UIKit

/*
 ----------------------------------------------------
 적명 규칙
 ----------------------------------------------------
 - Lower Camel Case : function, method, variable, constant
 ex) studentName, studentAge,....
 - Upper Camel Case : type(class, stucture, enum, extension...)
 ex) Student, Product
 -대소문자 구분
 - 첫 글자를 숫자로 시작하면 안된다.

 */
/*
 Hello World
 */
 
let message = "Hello, World!"
print(message)

/*
 ----------------------------------------------------
  상수 (let)
 ----------------------------------------------------
  - 상수 : 한번 선언된 값에 대해 변경이 불가능
  - 변수 : 한번 선언된 값에 대해 변경이 가능
 
  - 상수 선언 방법
     Basic Method
     let <variable name> : <type> = <value>
     추론 방법
     : let <variable name> = <value>
  - 변수 선언 방법
     Basic Method
     var <variable name> : <type> = <value>
     추론 방법
     : var <variable name> = <value>
 */

// 상수 -> 값을 못 바꿈
var inLetNum1 : Int = 200 // 차이점 : type이 명확
let inLetNum2 = 100

var intVarNum1 : Int = 200
var inVarNum2 = 100

// Error 상수는 값을 못바꾸기 때문에
inLetNum1 = 2000
intVarNum1 = 2000

print(inLetNum1)
print(inLetNum2)
print(intVarNum1)
print(inVarNum2)

// class, structure 쓰면 변수들이 다 보인다.
dump(inLetNum1)


// ------------
// Class 생성
// class는 instance가 있어야 한다. 항상.
// structure 는 데이터도 공유 해서 필요없음
// ------------

class Student{
    var name : String = "유비"
    var age : Int = 20
}

// Instance 생성
let student: Student = Student()
print(student)
print(student.name)
print(student.age)

// complie 된곳에 Student 클래스 안에 선언된 변수 값들이 다보인다.
dump(student)

// 😇 <- variable로 쓸수 있다. 이모티콘
var 😇 = 123
print(😇)
print("😇")

/*
 ------------------------------------
 문자열 보간법 -> print
 ------------------------------------
 
 - String Interpolation
 - Program 실행중 문자열, 변수, 상수의 값을 표현하기 위해 사용된다
 
 */
let studentName = "홍길동"
print(studentName)
print("Name :" + studentName)

// String Interpolation //  %d, %f 다 필요없다.
print("Name: \(studentName)")


let age : Int = 10
print("저는 \(age)살 입니다.")
print("저의 형은\(age+4)살 입니다.")

/*
  상수 선언후에 나중에 값 할당하기
  : 나중에 할당하려는 상수나 변수는 타입을 꼭 명시해 주어야 한다.
 */

let sum : Int
let inputA = 100
let inputB = 200

sum = inputA + inputB
print(sum)

// sum 은 let이라 한번 들어가면 바꿀수가 없다
// sum = 0 Error

// 변수 선언만 하고 값을 안넣어서 난 에러

var nickName: String
nickName = "유비"
print(nickName)

nickName = "관우"
print(nickName)





