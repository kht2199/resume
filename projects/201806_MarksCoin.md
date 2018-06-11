## Coin 정보 서버

#### 프로젝트 소개 및 특징
코인관련 정보(코인, 거래소, 투자자, 투자기관)를 간편하게 볼 수 있도록 웹을 통해 제공.  
개인적이 필요성과 요구사항이 있어서 개발을 진행하게 되었다.  
프로젝트의 진행 목표는 
1. 그동안 학습해온 기술을 최대한 활용해 빠르게 개발, 구현.
2. Spring Cloud 기술을 이용한 Cloud Native를 실현.
3. 시스템을 확장가능 가능하도록.
4. 모든 자동화.
5. 서비스의 기능을 점차 확장해 코인거래에 도움이 되는 서비스 개발.

#### 프로젝트 구성  
크게는 웹 클라이언트와 서버로 나누면 웹 클라이언트는 JSP나 Thymleaf나 JSP와 같은 동적 페이지가 아닌 순수 정적 페이지를 통해 제공한다.
(TODO 추가로 필요한 기능에 대해서는 Angular나 React나 Vue를 학습 후 적용할 예정이다.)

서버 구성은 Microservice Architecture 를 적용한다. 관리의 편의성을 위해 복잡성을 최대한 없애도록하고 Spring Cloud 만을 이용한다.
논리적으로 아래와 같이 분류해서 정리했다.  

1. API Gateway Server
    - DNS로부터 직접 연결되어 있어, 프로그램적으로 1차로 처리하는 역할을 한다.
    - Static pages, Static resources. (가격절감, 성능이슈 없음. TODO CDN으로 이동)
    - Router 기능(Spring Ribbon)을 이용해 API Service Server로 요청을 전달한다.
    - 유효한 요청에 대해서 filter를 제공한다 (Http method 제한)
    - Service Discovery Client(Eureka Server) 역할을 한다.
2. Service Discovery Server
    - Eureka Server 로 구현.
3. API Service Server
    - API 기능 제공
    - Spring Data Rest와 JPA를 이용해 별도의 로직없이 HATEOAS 방식으로 API로 제공한다.
4. Database Server
    - Mysql
    - 정기적이 Backup(예정)
    - Server 유실에 대한 방안 마련(고민중)
5. TODO Logging Server
6. TODO Monotoring Service
7. TODO Container
    - Gitlab Registry
    - TODO Management (K8s)
8. TODO Externalize Config (Spring config)
9. TODO CI/CD
    - TODO Gitlab
 