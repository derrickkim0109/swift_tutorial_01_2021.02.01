# Swift_tutorial_21.02.01

-  신세대 언어이다. 
-  상속 , 프로토콜(Delicate)
- MacOS
- Linux
- Windows(정식 버전은 안된다. )
---
   -> app을 만들려고 하면 MacOs로만 된다. MacOsX(ten)
- REPL : 
 
 < https://ide.goorm.io> -> Java,swift, python 도 다 개발 할수있다
 ->  Thin 방식  -> 용량큰 하드디스크 필요없게 클라우드 방식으로 쓰는것 ex) Chrome os
 ->  Thick 방식 -> 하드디스크 용량이 계속 커질것
 
 playground -> Test 해볼수 있는 환경 
 -> 그다음에 Project 로 쓴다(ps.선생님)



 ## 01 PlayGround 

### Constant and Variable 
     - variable Name -> str 
     - command => shift + enter
     
     1) 작명 규칙:

         - Lower Camel Case : function, method, variable, constant
         ex) studentName, studentAge,....
         - Upper Camel Case : type(class, stucture, enum, extension...)
         ex) Student, Product
         -대소문자 구분
         - 첫 글자를 숫자로 시작하면 안된다.

     2) 상수(let)
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

      // class, structure 쓰면 변수들이 다 보인다.
      dump(inLetNum1)


      // ------------
      // Class 생성
      // class는 instance가 있어야 한다. 항상.
      // structure 는 데이터도 공유 해서 필요없음
      // ------------

    - dump
      // complie 된곳에 Student 클래스 안에 선언된 변수 값들이 다보인다.
      dump(student)

    3) 문자열 보간법 -> print
      - String Interpolation
      - Program 실행중 문자열, 변수, 상수의 값을 표현하기 위해 사용된다
      - String Interpolation //  %d, %f 다 필요없다.

      상수 선언후에 나중에 값 할당하기
      : 나중에 할당하려는 상수나 변수는 타입을 꼭 명시해 주어야 한다.


      /*
      내 PC의 OS 크기 알기
      */
      //String(variable) -> String 으로 변환
      print("Int : \(String(Int.min)) ~ \(String(Int.max))")

      // 8 bit 숫자 크기
      print("Int : \(String(Int8.min)) ~ \(String(Int8.max))")

      // 16 bit 숫자 크기
      print("Int : \(String(Int16.min)) ~ \(String(Int16.max))")

      // 32 bit 숫자 크기
      print("Int : \(String(Int32.min)) ~ \(String(Int32.max))")

      // 64 bit 숫자 크기
      print("Int : \(String(Int64.min)) ~ \(String(Int64.max))")


      /*
      기본 데이터 타입
      : Bool(True or False), Int(정수), UInt(unsigned Int)<-Int *2
         Float, Double, Character, String
      -> 시작은 다 대문자로 통일 되어있다.
      */

      //Bool
      var someBool : Bool = true
      someBool = false
      // swift는 bool type에는 오로지 true or false만 들어감
      //someBool = 0


      //Int
      var someInt:Int = -100
      someInt = Int(100.1)

      // 천단위 100,000로 쓰면 문자로 들어간다
      // 그래서 이렇게 표현한다.
      someInt = 100_000
      // 내가 끊고 싶은 단위대로 쓸수 있다. **

      // UInt(Unsigned int)
      var someUInt: UInt = 100
      //someUInt = -100 -> Error
      //someUInt = someInt -> Error (type이 틀리기 때문이다)

      // Float

      // Double
      // type(of:) -> python : type
      // 숫자 Type 변환
      // 반올림
      character
      - someCharacter = "abc" -> 영어는 한글자만 들어간다.
      
      ***someString = someCharacter -> 쓸때 타입을 꼭 적어야 안헷갈림.
 
      -문자열과 특수문자
      -따옴표 문자열 안에 넣고 싶을때

      -Unicode
      -빈 문자열 초기화
      -빈 문자열 확인
      -문자열의 개별 문자 출력
      -문자 상수 선언

      - 문자 배열을 이용한 문자열 출력
       [Character]  <- Character 배열

       let mouseCharacters : [Character] = ["C","a","t","!","🐹"]
      // 문자열 배열을 문자열로 바꾼것이다.
      let mouseString = String(mouseCharacters)

      // 원래는 밑에 처럼 해야한다.***
      var mouseString1 : String = String(mouseCharacters)

      mouseString1.append(exclamationMark)
------- 02
---
# 03 기본 연산자

