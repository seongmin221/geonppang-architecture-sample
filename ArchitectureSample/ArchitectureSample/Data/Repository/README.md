#  Data/Repository

### 설명

- 구체적인 API 통신의 요청을 하는 부분입니다

- Clean Architecture에서 Repository Pattern을 사용하는 이유는 `Domain` 레이어의 `Entity`와, DB를 통해 받아오는 데이터 형식이 다를 수도 있기 때문입니다
    - 즉, `Domain` 레이어의 `Entity`에 데이터가 전달되기 전에, DB의 데이터 형식대로 한 차례 받아옵니다
    
    - 그 후, `Domain`에서 사용할 데이터 형태로 가공합니다
