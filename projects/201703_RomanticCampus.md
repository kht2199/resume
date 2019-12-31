# Romantic Campus Server

## 프로젝트 소개 및 특징
사내에서 다른 팀과 협업하여 업무시간 이외에 진행하게 된 프로젝트. 

## 프로젝트를 통해 배운 점.
1. Document 자동화(Swagger spring)  
2. JPA 사용 경험
3. 로깅 환경설정.  
    - 에러 로그는 Slack을 연동해 확인함으로써 단말팀을 감시(?)하며 이슈를 빨리 해결할 수 있었다.
4. 빌드, 배포
    - VCS으로 Gitlab을 사용하고, 빌드까지 모두 해결했다.
    - build용 branch를 분리해 사용하고, 해당 branch로 commit할 경우 maven-docker plugin 사용해 환경에 맞게 빌드 생성하도록 했다.
    - container 배포는 서버에서 직접 shell을 실행해 배포한다.
5. ERD와 다이어그램 문서 (Plant UML)
6. MarkDown Text 작성해 이력관리
7. DDD 적용
8. IntelliJ IDEA 개발.
