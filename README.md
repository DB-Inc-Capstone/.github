### .github

- 해당 저장소는 DB Inc. 산학캡스톤 프로젝트 `Cloud Native/MSA 기반의 업무 관리 시스템 및 관리자용 대시보드 구축`을 위한 자동 배포 스크립트를 모아둔 공간입니다.

- 현재, `docker-compose.yml` 를 통하여 Cloud/MSA 서버를 구축하는 저장소입니다.

- `back-worker`, `back-eurekaserver`, `back-apigateway` 등 모든 저장소의 경우, Docker Hub 에 자동배포하도록 설정하였습니다.

<br/>

- 개인 로컬 `docker-compose.yml` 사용법
  - 터미널에서 `docker-compose up` 실행
  - .env 파일을 아래와 같이 작성하여 사용
    - POSTGRES_DB_BACK_WORKER=back_worker
    - POSTGRES_DB_BACK_WORK=back_work
    - POSTGRES_DB_BACK_DASHBOARD=back_dashboard
    - POSTGRES_USER=postgres
    - POSTGRES_PASSWORD=????
   
<br/>
    
- 아마존 CI/CD 기능 사용
  - 각 레포지토리에 있는 `docker.yml` workflow 파일을 통해 진행합니다.
  - 빌드 및 도커 이미지 배포를 한 뒤, 아마존으로 변경된 컨테이너만 교환해주는 방식으로 진행합니다.

 <br/>
 
- 프로젝트 배포에 관련하여 질문이 있으신 분들은 아래 이메일로 연락해주시면 감사하겠습니다.
  - dev.taehyeon.kim@gmail.com
