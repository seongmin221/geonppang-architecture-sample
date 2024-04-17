#  Data/Network/DataMapping

### 설명

- 외부 DB에서 사용되는 데이터 형태를 만들어 두는 폴더입니다

### 구성 요소

- `Request`: 요청을 보낼 때 사용되는 데이터 형태입니다 

- `Response`: 요청을 받았을 때의 데이터 형태입니다
    - 사용할 때에는 `Core/Network`에 기본 형태의 데이터 wrapper를 씌워 사용합니다
    - `Repository`에서 `Domain`으로 데이터가 전달될 때 필요한 `toDomain()` 함수를 각각 선언해두어야 합니다
