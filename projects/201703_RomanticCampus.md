## Romantic Campus Server

#### 프로젝트 소개 및 특징
사내에서 다른 팀과 협업하여 업무시간 이외에 진행하게 된 프로젝트. 

#### 프로젝트 구성
Spring Boot와 Embedded Tomcat을 사용한다. Spring Data Rest의 Projection을 통해 응답을 처리하고 Validator를 구성해 요청을 처리한다.  
JPA를 기반으로 개발을 하고, 개발 Local은 H2, 개발서버는 Maria DB로 구성된다.  

#### 프로젝트를 통해 배운 점.
1. Document 자동화(Swagger)
2. JPA 사용 경험
3. 로깅 환경설정.
    - 에러 로그는 Slack을 연동해 확인함으로써 단말팀을 감시(?)하며 이슈를 빨리 해결할 수 있었다.
4. CI, CD
    - VCS으로 Gitlab을 사용하고, 빌드까지 모두 해결했다.
    - build용 branch를 사용했고, 해당 branch로 commit할 경우 maven build 후 docker container를 생성하도록 했다.
    - container 배포는 서버에서 직접 shell을 실행해 배포한다.
5. ERD와 다이어그램 문서 (Plant UML)
6. MarkDown Text 작성 경험
7. DDD 적용.
