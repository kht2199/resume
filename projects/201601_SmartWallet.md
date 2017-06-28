## Smart Wallet Server

Smart Wallet 프로젝트가 어떤 프로젝트인지, 어떤 점을 배울 수 있었는지 소개한다.

#### 프로젝트 소개 및 특징
LG 휴대폰에서 기본적으로 제공하는 Wallet 서비스이다. LG 휴대폰에 기본 내장되는 App이고 타사 고객도 사용할 수 있는 서비스이기 때문에 가입자, 이용자 수가 많다.(구체적인 수치는 생략).  

#### 프로젝트 구성
Wallet 앱의 요청을 처리하는 G/W 서버. 서비스와 업체에 대한 승인 및 컨텐츠를 관리하는 Admin Web server, 그리고 컨텐츠를 등록하는 CMS Web Server로 구성된다.  

#### 프로젝트를 통해 배운 점.
1. SQL 중심의 개발방식에 대한 문제점을 몸소 느꼈다.
  - 현재 서비스중인 프로젝트에 대한 개발/수정이 어렵다. 특히 서비스중이고 오래된 프로젝트일수록 개발하기 어렵다. 
  - 왜냐하면 업무로직이 SQL 중심이므로 중복되는 코드가 많고, 유사한 쿼리가 분산되어 있어 히스토리를 알지 못하면 수정이 불가능하다.
  - 수정하고자 하는 기능과 연관된 쿼리가 어디에 있는지 모두 파악하고 연관 기능에 대해서 풀 테스트해야한다.
  - 코드 중복또한 문제이지만, 특히나 업무를 모른다면 어느 부분을 테스트해야하는지 알기도 어렵다.
2. TDD에 대한 학습욕구.
  - 1번에서 언급한바와 같이 미리 만들어진 기능테스트가 없으면 테스트 자동화는 불가능하다. 테스트에 시간을 쏟으면서 테스트 자동화에 대한 필요성을 어마어마하게 느끼게 되었다.
  - 테스트의 중요성은 어디서나 이야기하지만 어떻게 테스트를 할 것인지, 무엇을 테스트할 것인지를 정확하게 제시하는 것은 TDD라고 생각한다.
  - 1번에 대한 테스트가 어려운 문제는 TDD로 해결 가능하다고 생각한다. 항상 연습하고자 하는 마음은 있지만 아직 실천하지는 못한다.
3. 많은 가입자/이용자에 대해 많은 것을 고민해야 한다.
  - 트레픽에 대한 문제는 없었다. 하지만 많은 데이터에 대한 배치성 작업, 그리고 Table을 설계할 경우 누적되는 데이터 건 수에 대해 충분히 고려하고 설계를 해야한다.  
  - 특히 개발사항에 대해 문서로 테스트 사항을 기록하고 테스트하고 쿼리의 수정/추가 사항에 대해서는 쿼리플랜을 반드시 확인하도록 해야한다.
4. Log의 중요성과 해결책에 대한 고민.
  - 민원을 처리하다보면 쉽게 찾지 못하는 경우가 많다. 하지만 경험이 쌓이다보니 DB 에서 쿼리를 할지, Log에서 찾을지 알 수 있게 되지만 많은 시간이 필요로 한다.
  - Log를 잘 남겨 문제가 쉽게 찾아지면 Best case이지만, 로그가 없거나 너무 많으면 시간이 오래걸린다. 그리고 서버가 분산되어 있고 서버로 접근하는데 시간이 소모되다보면 다른 해결책을 공부하게 된다.
  - 먼저, 이런 문제에 대한 나름대로의 해결책은
    1. Load가 분산되는 환경에 대한 서버는 각 서버에 대한 로그를 집중하는 환경을 구성해야 한다.
    2. 로그에 대한 표준화가 필요하다. 예를들어 요청/응답에 대한 정보, 클라이언트 정보, 에러 코드, 서비스 구간별 에러 로깅, Transaction 추적 가능성 등을 염두해 로그를 남기고 쉽게 확인하도록 한다.
5. 타 서비스와의 연동 및 설계에 대한 고민.
  - 연동서비스가 많다보니 각 서비스마다 연동방식이 다 다르다. 그러면 각기 다른 서비스에 대한 추상적인 코드가 필요하다고 생각하지만 현실은 그렇지 않다.
  - 그리고 구현의 문제보다 더 고민을 해야하는 것은 해당 서비스의 연동 Flow를 더 고민해야한다. 그리고 코딩하기 이전에 충분히 테스트하고 시뮬레이션이 필요하다.