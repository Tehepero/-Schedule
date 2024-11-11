# [Spring 7기] CH 3 일정 관리 앱 만들기
![ERD 일정](https://github.com/user-attachments/assets/e5ff4091-6189-4fec-9975-d89cf94493a3)

@@@@@@@@@@ 피드백 내용 @@@@@@@@@@@

ID -> 소문자로 통일 , 우측 상단의 Untitled2 => table 내용적기

전체 일정조회에서 요리! 숙제! 공부! 뒤의 , 빼기

선택 일정 조회의 바디에는 내용이 없어야 합니다 (안의 내용 삭제)

RESULT 전부 소문자로 바꾸기 ,  마지막 일정 삭제에도 리퀘스트 내용 없어도 됩니다 

이미지로 제출한것이라 수정 내용은 여기에 적기로 하였습니다

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


![API 제출용1](https://github.com/user-attachments/assets/c987bcd7-7005-4979-a800-31baff90d976)
![API 제출용2](https://github.com/user-attachments/assets/e6640fe1-8b18-42e3-9ebd-51601f60963e)
![API 제출용3](https://github.com/user-attachments/assets/e222a817-18d0-4695-b708-6c2122686381)
![API 제출용4](https://github.com/user-attachments/assets/1d299bf5-9f66-45a0-8953-608c900f6a00)
![API 제출용5](https://github.com/user-attachments/assets/ddb1bf57-6eb5-467f-90c0-09aa1e5e8400)

![Query 제출용1](https://github.com/user-attachments/assets/9e0e6ee4-3b3d-4276-8a5c-1a9949dc6a11)
![Query 제출용2](https://github.com/user-attachments/assets/177b9958-ab7f-4984-8780-7e8b88508c6a)

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

2024 - 11- 11 추가 내용 

스프링 : 엔터프라이즈용 Java 애플리케이션 개발을 편하게 할 수 있게 해주는 오픈소스 경량급 애플리케이션 프레임워크

@ 프레임 워크 @ : 자동차 회사에서는 미리 자동차의 차체를 만들어뒀고, 여러분은 그것을 가져다가 사용하기만 하면 되는 것입니다. 
여기에서 자동차의 차체에 해당되는 것이 바로 프레임워크입니다. 웹 개발에 있어 프레임워크란, 어떠한 목적을 쉽게 달성할 수 있도록
해당 목적과 관련된 코드의 뼈대를 미리 만들어둔 것을 의미합니다.

스프링부트 : 스프링 부트는 스프링으로 애플리케이션을 만들 때에 필요한 설정을 간편하게 처리해주는 별도의 프레임워크로써
스프링 부트를 사용하면 기존에 어려운 초기 설정에 쏟아야 했을 시간과 노력을 절약하여 비즈니스 로직을 구현하는데에 집중할 수 있습니다

일단 인텔리제이에서 기존 하던대로 하면 안되고
new project 에서 Generators 의 Spring Boot를 반드시 클릭하고
Language는 자바로 하며 Type 은 Gradle - Groovy로 되어 있는지 체크 한뒤에 생성해야 합니다.

Next를 누르면 Developer Tools 와 Web 등등 체크할수가 있는대
강의 내용중에  Lombok 과 Spring Web 칸에 체크했던게 기억이나서 체크를 해주고 생성 했습니다

검색해보니 

*Lombok : 자바의 Annotation processor 라는 기능을 이용하여 컴파일 시점에 Lombok의 어노테이션을 읽어서,
다양한 메서드와 생성자를 자동으로 생성해 주는 라이브러리이다. (Getter, Setter, Equlas, ToString 등과 같은 코드를 자동완성 해줍니다.)

*Spring Web : 주로 웹 애플리케이션과 RESTful 서비스를 개발할때 사용하며 웹 요청을 처리하고 응답을 생성하는데 필요한 기능을 제공합니다
JSON이나 XML 같은 다양한 형식의 데이터를 클라이언트와 서버 간의 주곱다는 REST API를 쉽게 만들수 있게 도와줍니다.
Spring Boot와 함께 사용될 때, Spring Web은 내장 Tomcat, Jetty 또는 Undertow 서버를 사용하여 독립시행 가능한 웹 애플리케이션을 빠르게
개발하고 배포할 수 있게 해줍니다.

![2024-11-11](https://github.com/user-attachments/assets/220ff1b3-84cb-4f14-bb9e-c7246677a3b3)

위 사진에서의 코드를 분석해보면
일단 7번째 줄의 @RestController 을 알아보았습니다

@ 통신을 하기 위해선 클라이언트가 서버로 요청 메시지의 본문(Body)에 데이터를 담아서 보내야 하고, 서버도 클라이언트에 응답하기 위해 응답 메시지의 본문(Body)에 데이터를 담아서 보내야 한다.
이 때의 본문(body)를 각각 Request Body와 Response Body로 부르는데, 이러한 Body에 담기는 데이터 형식은 JSON(JavaScript Object Notation)이다. @

@RestController 어노테이션은 이러한 통신에서 쓰이는 Body 안의 데이터(JSON객체)를 자바 객체(VO)로 변환해주는 어노테이션입니다.
마찬가지로 @ResponseBody 어노테이션은 보내려는 자바 객체(VO)를 데이터(JSON객체)로 바꿔 Body 안에 넣어주는 어노테이션이라고 보면 무방합니다.
즉, 해당 클래스 내의 메서드에서 반환되는 값이 자동으로 JSON 형태로 응답 본문에 포함되어 클라이언트에게 전달됩니다.

그 다음으로 10번째 줄의
@GetMapping을 알아보았습니다

@GetMapping : @RequestMapping(method = RequestMethod.GET) 의 축약형으로
주로 데이터를 조회할 때 사용됩니다

스프링부트에서는 어떤 HTTP 메서드를 사용할지에 따라 RequestMapping 어노테이션을 아래의 어노테이션으로 구분해서 제공합니다.
RequestMapping 어노테이션으로 사용가능하지만, 
목적에 따라 아래 어노테이션으로 대체사용이 가능합니다


* @GetMapping : GET 요청을 하는 API의 어노테이션.
  데이터를 가져올 때 사용한다.
  
* @PostMapping : POST 요청을 하는 API의 어노테이션
  데이터를 게시할 때 사용한다.

* @PutMapping : PUT 요청을 하는 API의 어노테이션
  데이터를 수정할 때 사용한다.

* @DeleteMapping : DELETE 요청을 하는 API의 어노테이션
  데이터를 삭제할 때 사용한다.

* @PatchMapping : PATCH 요청을 하는 API의 어노테이션
  데이터를 수정할 때 사용한다.


주소는 @GetMapping("/aaa/{f}/{s}") 으로 설정해놓았기 때문에 
http://localhost:8080/aaa/f/s가 되며

메서드는 /aaa/{f}/{s}에서 f와 s의 값을 가져와 Long 타입의 변수로 전달합니다
여기서 주소창에 입력을 할 때에
f / s 는 사용자가 적을 수 있으며 12 ~ 16번의 코드가 실행(계산) 된 후에
return값을 반환합니다

만약 10번의
주소는 @GetMapping("/aaa/{f}/{s}") 에서
처음으로 돌아가
@GetMapping("/aaa) 으로 하여 간단하게 돌려보면

![화면 캡처 2024-11-11 150554](https://github.com/user-attachments/assets/146944fc-6fde-47cf-ad8e-21c999d0cf2b)
![화면 캡처 2024-11-11 150612](https://github.com/user-attachments/assets/653bd97e-55be-4615-aed1-7e2a5182f698)

이렇게 작동합니다 즉 @GetMapping("/aaa) 에서
("/aaa)의 aaa는 사용자가 원하는것으로 수정할수가 있고 그것과 실행한뒤 같은 주소를 넣었을때에
원하는 창을 뛰울수 있습니다
현재는 aaa밖에 적은게 없기 때문에
http://localhost:8080/aaa 로 접속하면 aaa가 나오는것을 볼수 있습니다

튜터님께서 예시를 알려주셨지만

@GetMapping("/aaa")
public String test() {
}

위 코드에서 test() 의 () 안에는 많은 조건?을 넣을수 있습니다
예시로 보여주셨던것은

    @GetMapping("/aaa/{f}/{s}")
    public String test(@PathVariable Long f, @PathVariable Long s) {
        return "aaa";
    }
}

이렇게 넣음으로써
사용자는 두가지 Long 타입의 f, s을 입력할 수 있게 되었습니다
이번에는 aaa와  f / s를 넣을수있게 하였기 때문에 주소창에
http://localhost:8080/aaa/6/2 
( 여기서 6 / 2 는 원하는 수를 넣으면 됩니다)

이렇게 창을 띄울 수 있게 되었습니다.
이 뿐만 아니라 test안에 원하는 조건들을 넣을수 있습니다












