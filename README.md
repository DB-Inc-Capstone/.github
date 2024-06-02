### .github

*작성 : 김태현 (DevTae)*

- 해당 저장소는 DB Inc. 산학캡스톤 프로젝트 `Cloud Native/MSA 기반의 업무 관리 시스템 및 관리자용 대시보드 구축`을 위한 자동 배포 스크립트를 모아둔 공간입니다.

- 현재, `docker-compose.yml` 를 통하여 **Cloud/MSA 서버**를 구축한 상태입니다.

- `back-worker`, `back-eurekaserver`, `back-apigateway` 등 DB-Inc-Capstone 을 구성하는 모든 저장소의 경우, **Docker Hub 에 자동배포**하고 **업데이트된 이미지에 대하여 Docker Compose 에 자동 편입**될 수 있도록 CI/CD 를 구성하였습니다.
  
- 현재 아래와 같이, `back-work` 에 대하여 **2 개의 인스턴스**를 배포하였고 이에 대하여 **API Gateway** 및 **Load Balancer** 에 의하여 API 요청이 분산됩니다.
  
  ![image](https://github.com/DB-Inc-Capstone/.github/assets/55177359/a6ca0c9c-89b2-4af8-8c03-f6f7635a1ab7)

  - 아마존 EC2 t3-medium 사양에 의하면, 램 4GB 로 `Docker Swarm` 및 `Kubernetes` 사용에 있어서 원활한 인스턴스 생성이 어려운 이유로, 호출의 빈도가 높고 서비스 종속성 또한 높은 `back-work` 서비스만을 다중 인스턴스로 구축하였습니다.
  - 추가적으로, 사양이 더 높은 상황을 대비하여 `Docker Swarm` 스크립트를 준비해뒀으며, 해당 아키텍처의 권장 사양 (RAM 16GB 이상) 이상으로 구성이 가능하다면 `Docker Compose` 가 아닌 `Docker Swarm` 및 `Kubernetes` 사용을 추천드립니다.

<br/>

- 서버 세팅 방식 (`docker-compose.yml` 사용법)
  - 터미널에서 `docker-compose up --build --force-recreate` 실행합니다.
  - .env 파일을 아래와 같이 작성하여 사용합니다.
    - POSTGRES_DB_BACK_WORKER=back_worker
    - POSTGRES_DB_BACK_WORK=back_work
    - POSTGRES_DB_BACK_DASHBOARD=back_dashboard
    - POSTGRES_USER=postgres
    - POSTGRES_PASSWORD=????
   
<br/>
    
- 아마존 CI/CD 기능 사용
  - 각 저장소에서 main 브랜치에 push 할 시, `Github Action` 에 의하여 **자동으로 AWS EC2 에서 이미지를 pull** 하고 **해당 이미지만 교체**하는 방식으로 진행됩니다.

 <br/>
 
- 프로젝트 배포에 관련하여 질문이 있으신 분들은 아래 이메일로 연락해주시면 감사하겠습니다.
  - dev.taehyeon.kim@gmail.com
