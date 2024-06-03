### DB Inc. 산학캡스톤 프로젝트

- 다음 프로젝트는 MSA(Microservices Architecture) 방식으로 구현한 사원 업무 관리 플랫폼입니다.
  - 프로젝트 명 : `Cloud Native/MSA 기반의 업무 관리 시스템 및 관리자용 대시보드 구축`

- 시연 영상 링크
  - 다음 [링크](https://youtu.be/RcDwQzuEKno)에서 확인이 가능합니다.

- 아래와 같이 프로젝트를 구성하였습니다.
  - [`.github`](https://github.com/DB-Inc-Capstone/.github) : 프로젝트 배포 관련 레포지토리
  - [`back-apigateway`](https://github.com/DB-Inc-Capstone/back-apigateway) : API Gateway 세팅
  - [`back-eurekaserver`](https://github.com/DB-Inc-Capstone/back-eurekaserver) : Eureka Server MSA 세팅
  - [`front`](https://github.com/DB-Inc-Capstone/front) : React 기반 Front 프로젝트
  - [`back-worker`](https://github.com/DB-Inc-Capstone/back-worker) : 작업자 API 프로젝트
  - [`back-work`](https://github.com/DB-Inc-Capstone/back-work) : 작업 API 프로젝트
  - [`back-dashboard`](https://github.com/DB-Inc-Capstone/back-dashboard) : 대시보드 API 프로젝트

- 팀원 구성 및 개발 역할은 다음과 같습니다.
  - Kim Taehyeon (DevTae / 팀장 및 백엔드)
    - `back-worker` 구현
    - 백엔드 Github Action CI/CD 세팅 (`.github` 를 통한 Docker 배포 자동화)
    - Docker Compose 및 Spring Cloud Eureka 를 활용한 MSA 구축
  
  - LeeMingu (dlalsrn / 프론트)
    - React 를 활용하여 `front` 구현
    - 와이어프레임 작성
  
  - Sunghyun Choi (sh3866 / 프론트)
    - React 를 활용하여 `front` 구현
    - 와이어프레임 작성
  
  - Ryu hyeong jin (uhj130 / 백엔드)
    - `back-work`, `back-dashboard` 구현
