# Creavorite

## 프로젝트 소개
디자인 상품에 대한 커뮤니티, 거래, 협업 지원하는 웹 서비스이다.  
서비스내에 polling, marketplace, community 등 다양한 기능을 제공한다.

## 프로젝트 업무
크라우드소싱은 기존 서비스와는 별개의 서비스로써 기존 코드의 의존성을 복잡하게 만들지 않기 위해 코드를 maven 모듈화해 작업을 진행했다.  
기존 서비스와 공통적으로 사용하는 common module, 기존에 개발된 creavorite module, 신규 서비스인 crowdsourcing module로 분리했다.
  
클라이언트는 기존 thymeleaf, handlebar로 개발되어 있어 프론트 개발과 서버 개발을 독립적으로 하기 어려운점을 해소하기 위해 vue로 작성했다.  
그리고 기존의 도메인에 대해 서브 도메인을 사용하지 않는다는 요구사항으로 인해 서버의 resource에 배포하고 vue 페이지로 redirect해서 동작하도록 했다.  

1. 서버  
    - 프로젝트 모듈화.
    - 크라우드소싱 관련 클래스, 데이터베이스 설계 및 API 개발.
    - aws 비용 및 구조 개선, 관리.
        - 미사용 리소스 삭제
        - instance type 변경, spot instance 사용으로 비용 절감.
    - maven pom 정리.
        - 사용하지 않는 라이브러리 제거.
        - profile에서 공통적인 property를 분리하고 사용하지 않는 profile 제거.
        - 절대경로로 설정된 부분에 대한 resource를 classpath로 지정하고, 해당 코드 수정.
        - 350MB 가량의 빌드파일을 90MB로 다운사이즈.
    - 다른 서비스의 코드를 그대로 가져와 일부 기능을 사용하는 문제가 발견되어 불필요한 코드 정리.
2. 클라이언트
    - vue, vuex, vue-router, typescript를 이용한 페이지 개발.
3. TTA 인증 관련 대응
