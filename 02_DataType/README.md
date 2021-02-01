# Swift_tutorial_21.02.01

## Data Type

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
---
### 문자 길이
      let str = "12345,8993"
      print("str has \(str.count) characters")
---
### 문자열 인덱스
      let greeting = "Guten Tag!"
      // print(greeting.startIndex)// binary Integer 라 눈에 보이지 않는다.
      greeting[greeting.startIndex]
      // greeting[String.Index(encodedOffset: 1)]
      greeting[greeting.index(before: greeting.endIndex)] // 문자열의 맨끝은 '\'이라서 !가 나옴.
      greeting[greeting.index(after: greeting.startIndex)] // u

      let index = greeting.index(greeting.startIndex, offsetBy: 7) // 7자리
      // print(index) -> 안보임
      greeting[index] //a 8번째이지만 0부터 시작 하니까.
---
### 문자열의 개별 문자 접급
      // index값으로 뺄것이다. index = 0~9
      // terminator : -> 옆으로 나오게 만들어 준다.
      for index in greeting.indices {
          print("\(greeting[index])", terminator: ",")
      }
---
### 문자열의 삽입과 삭제
      print()
      var welcome1 = "hello"
      // ! 뒤에 추가 하기
      welcome1.insert("!", at: welcome1.endIndex)

      welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
      // ! 제거 했다.
      welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
      print(welcome1)
      
      //offsetBy: -6 끝에서 6번 움직이는것                 ..< 범위 주는것이다.
      let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
      // ' there' 제거함
      welcome1.removeSubrange(range)
      print(welcome1)
---
### 부분 문자열
      let greeting1 = "Hello, World"
      // greeting1 안에 ','들어간곳 찾아라   // ??
      // ,가 없으면 맨끝에 것을 보내라는 의미
      let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
      // ?? : nil을 허용하면서 앞의 조건값에 해당하는 것이 없으면 endIndex를 수용한다. --> 범위 줄때 쓴다. (반복문 많이 안쓰게됨)
      // nil = null 과 같은 것이다.
      // ?? 왜 두개냐?? 삼항연산자(i >= 1 ? a:b)의 ? 하나와 nil 값의 ? 하나씩 해서 두개가 된것이다.
      // null값이 들어가는것 optional이라 한다.
      let beginning = greeting1[..<index1]
      print(beginning)

### 접두사(Prefix) 접미사(suffix)
      // 검색이 가능하다
      
      var mansionCount = 0
      var cellCount = 0
      for scene in romeoAndJuliet{
          if scene.hasSuffix("Capulet's mansion"){
              mansionCount += 1
          }else if scene.hasSuffix("Friar Lawrence's cell"){
              cellCount += 1
          }
      }
      
---
### Any, nil
      // Any : Swift의 모든 타입을 지칭하는 키워드
      // nil : null 을 의미하는 키워드
      // Any. -> 숫자 문자 다들어간다는 소리
      var someAny : Any = 100

      someAny = "어떤 타입도 수용 가능하다."
      someAny = 123.123

      // Any type 이기 때문에 Double과 틀리다.
      // let someDouble : Double = someAny -> Error
      // as! 하면 Double 허용.  as? 의 강제형 as!
      // ! <- nil
      // nil type 체크 하는것이 ? , ! 있다.

---
### Tuple
-  Tuple 사용전 선언 및 출력 방법
---

###  Type 별칭
- 기본 Type이든 사용자 Type이든 별칭을 사용할 수 있음

                typealias myInt = Int
                typealias yourInt = Int
                typealias myDouble = Double

                let age : myInt = 20
                let year : yourInt = 2020
                // year = age -> let 이라 안됨 : 상수


