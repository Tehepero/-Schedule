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

