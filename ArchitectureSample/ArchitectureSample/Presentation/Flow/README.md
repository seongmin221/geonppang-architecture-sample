#  Presentation/Flow

### 설명

- Coordinator Pattern을 적용하며 설계된 Flow 별로 Scene을 구별해두었습니다

- 각 폴더별로 하나의 `Coordinator`와 `Coordinator의 추상화`가 존재합니다

- 각 폴더별로 해당 Flow에 포함되는 `ViewController`, `ViewModel`, `View`가 존재합니다

### 구성 요소 (논의 필요)

- `App`: 전반적인 App의 Navigation을 담당합니다
    - `LaunchScreenVC`로 시작해, 로그인 여부를 판단한 뒤 `Main` 또는 `Auth`로 이동합니다
    
    - 기존에 도입하고자 했던 `DIContainer`의 도입을 위해서는 `Application` 레이어에 존재해야 합니다
        - 하지만 `DIContainer`의 구현과 러닝커브에 많은 시간이 소요될 것 같다는 생각에 보류 상태입니다
        - 추후 도입하기에 용이하도록 `TabBarController`와 분리하였습니다

- `Main`: 앱의 주된 기능들에 관한 Navigation을 담당합니다
    - `TabBarController`로 시작해, 각 `Tab` 별로 `Home`, `BakeryList`, `MyPage`를 `children`으로 갖습니다

- `Auth`: 로그인 및 회원가입 관련 Navigation을 담당합니다

- `Home`: 홈 관련 Navigation을 담당합니다

- `BakeryList`: 빵집 리스트 관련 Navigation을 담당합니다

- `MyPage`: 내 프로필 관련 Navigation을 담당합니다

- `Filter`: 필터 설정 관련 Navigation을 담당합니다

- `Search`: 검색 관련 Navigation을 담당합니다

- `BakeryDetail`: 세부 빵집 디테일 관련 Navigation을 담당합니다
