# 암호화폐 트레이딩 서비스

## 프로젝트 소개
웹페이지를 통해 거래소에서 지원하지 않는 매매방식을 지원하기 위해 아래 기능이 개발되었다.  
1. 예약 매수
2. 예약 매도
3. 추격 매수
4. 트레일링 매수/매도
5. 스탑로스 기능

## 프로젝트 구성.  
1. API Gateway Server
    - Web Content
    - WebSocket
    - API Server
2. Ticker Server
    - 거래소의 시세정보 캐시
3. Admin Web Server
    - react, redux, react-router.
4. Mysql DB (AWS RDS)

## 프로젝트 개발
### 웹 클라이언트  
1. 새로운 환경. React, npm.
- 프론트앤드 프레임워크를 사용해본 경험이 없었지만, 가장 많이 사용하고 hybrid 개발이 가능한 react 를 선택했다.  
- reactive client, reactive server 를 구현해보고 싶었고, reactive 에 대한 장점을 이해할 수 있었다.  
- 그리고 처음으로 npm 으로 구성해 개발해본 프로젝트였으나, 필요한 부분만 찾아보며 개발함에도 큰 어려움없이 환경구성 할 수 있었다.

### 서버-클라이언트 통신  
1. REST vs Web Socket(WS).
- 거래소에서 조회되는 실시간성 시세정보를 화면에 갱신하기 위한 WS과 사용자, 거래 API를 위한 REST 구성했다.
- HTTP과는 달리 WS 통신방식에 대한 이해가 없이 예제를 바탕으로 문제를 하나씩 해결하며 개발했으나 일반적인 해결책은 찾지 못했다.
    - HTTP 로 인증한 정보를 어떻게 WS에서도 인증정보를 유지할지.
    - WS의 payload 형식.
    - 특정 대상에게 메시지 전송.

### 서버
1. Redis를 이용해 session 을 관리하고 stateless 구성.
2. spring cloud project를 이용해 config, service, api gateway 분리.
3. docker로 빌드, shell 배포, docker swarm으로 container 관리, 이중화.
4. JPA 사용해 class 중심으로 도메인 로직 구성.

## 프로젝트 관리
Notion 으로 업무를 리스트업하고 일정을 관리했다.  
