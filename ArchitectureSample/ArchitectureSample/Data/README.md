#  Data

### 설명

- Clean Architecture의 Data Layer입니다

- 외부/내부 데이터베이스로부터 데이터를 받아오는 역할을 담당하는 레이어입니다

### 구성 요소

- `Repository`: Repository Pattern 을 적용한 요소로, 특정 데이터를 통신을 통해 받아오는 역할을 합니다
    - `Domain/Interface`의 추상화 된 `Repository`의 구체화된 구현부분 입니다
    
    - return type 은 `Domain` 레이어의 `Entity`로, 우리 건빵 팀은 Combine을 사용하기로 했기 떄문에, 
    `Publisher`로 wrapping 된 타입을 반환할 것으로 예상 (아직 Combine을 잘 몰라서 공부할 예정..!)
    
    - 내부/외부 DB에 해당 하는 Repository를 모두 구현합니다

- `Network`: `Endpoint` 또는 `DataSource` 등 **외부** 데이터베이스와 통신을 할 때 필요한 요소들을 선언합니다

- `PersistentStorage`: `Network` 비슷한 존재로, **내부** DB의 데이터를 가져오기 위한 `Endpoint`를 선언합니다

- `Error`: `Data` 레이어에서 처리되어야 하는 에러들을 모아둡니다
    - e.g. 액세스 토큰 또는 리프레시 토큰 만료

