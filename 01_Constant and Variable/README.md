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
      
      // sum 은 let이라 한번 들어가면 바꿀수가 없다
      // sum = 0 Error

      // 변수 선언만 하고 값을 안넣어서 난 에러

      
