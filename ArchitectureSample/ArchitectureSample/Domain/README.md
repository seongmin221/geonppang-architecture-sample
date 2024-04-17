#  Domain

### 설명

- Clean Architecture의 Domain Layer입니다

- 앱의 전반적인 비즈니스 로직, UseCase, Entity를 담고 있습니다

- `import UIKit`는 되도록 이루어지면 안됩니다

### 구성 요소

- `UseCase`: 모든 비즈니스 로직(외부 DB 통신, 내부 DB 통신 등)을 포함합니다

- `Interface`: `Repository`의 추상화 된 형태를 포함합니다

- `Entity`: `UseCase`를 통해 뷰에 보여질 데이터 형태입니다
    - 뷰에 보여진다고 해서 `Presentation` 레이어를 알고 있는 것은 아닙니다 

- `Error`: 다양한 `UseCase` 들의 비즈니스 로직이 실행될 때 `Domain` 레이어에서 처리되어야 할 에러의 모음입니다
    - e.g. `Presentation` 레이어의 `TextField`의 글자 수를 세는 로직을 실행할 때, 특정 글자 수를 넘어가는 에러 
