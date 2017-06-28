## Romantic Campus Server

#### 프로젝트 소개 및 특징
사내에서 다른 팀과 협업하여 업무시간 이외에 진행하게 된 프로젝트이다. 그로 인해서 진행이 더디긴 하지만, 다른 프로젝트에서 경험할 수 없는 기술을 사용하며 다양한 경험을 할 수 있었다.  
모든 개발 구성을 혼자 진행했다.
  
#### 프로젝트 기여도
100%

#### 프로젝트 구성
Spring Boot와 Embedded Tomcat을 사용한다. Spring Data Rest의 Projection을 통해 응답을 처리하고 Validator를 구성해 요청을 처리한다.  
JPA를 기반으로 개발을 하고, 개발 Local은 H2, 개발서버는 Maria DB로 구성된다.  

#### 프로젝트를 통해 배운 점.
1. 단말팀과의 협업의 어려움.
    - 초기 API 구성은 설계된 Table을 제공하는 방식으로 개발했으나, Client에서는 이를 조합해 활용하는 것은 불편하다는 것을 느꼈다.
    - 이후에 Client의 화면단위의 API로 구성하고 이를 해결했다.
2. Document 자동화
    - 혼자 프로젝트를 진행하면 다른 프로젝트처럼 개발을 하기에는 절대적으로 시간이 부족하다.
    - 특히 API문서는 업데이트하기 어렵기 떄문에 초기부터 Swagger를 고려해 사용했지만, 문서를 보기좋게 만드는것에 많은 시간을 쓰게됐다.
3. JPA 사용 경험
    - 프로젝트를 시작한 이유이기도 한 JPA를 경험한 것은 최고의 자산이 된 것 같다.
    - 쉽지만 어려운 JPA를 통한 테이블 자동생성기능, 그리고 이를 활용한 쿼리생성기능을 활용하면서 DB에 대한 쿼리작성을 고민하지 않게 되어서 개발이 즐거웠다.
    - CrudRepository를 통한 쿼리생성 기능만 대부분 사용했고 Jpql은 사용해보지 못했다.
4. 로깅 환경설정.
    - 에러 로그는 Slack을 연동해 확인함으로써 단말팀을 감시(?)하며 이슈를 빨리 해결할 수 있었다.
5. CI, CD
    - VCS으로 Gitlab을 사용하고, 빌드까지 모두 해결했다.
    - build용 branch를 사용했고, 해당 branch로 commit할 경우 maven build 후 docker container를 생성하도록 했다.
    - container 배포는 서버에서 직접 shell을 실행해 배포한다.
6. ERD와 다이어그램 문서
    - 복잡한 로직에 대한 Sequence Diagram이나 ERD는 Intellij의 Plant UML plugin을 통해 간단히 그렸다.
    - 수정하기에 빠르고 편하다.
7. MarkDown Text 작성 경험
    - MD 파일로 history를 공유한다.