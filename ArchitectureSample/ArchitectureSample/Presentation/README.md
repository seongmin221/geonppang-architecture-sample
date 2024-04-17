#  Presentation

### 설명

- Clean Architecture의 Presentation Layer입니다
- 앱의 User Interaction 부분을 담당합니다
- `Domain` 레이어와 `Core/DesignSystem`에 의존하고 있습니다


### 구성 요소
- `Common`: 전반적으로 자주 사용되는 UIComponent를 구현해 두는 폴더입니다

- `Utils`: **UI와 관련된** extension 및 유용한 도구들을 모아두는 폴더입니다

- `Flow`: Coordinator Pattern을 적용했기 때문에, 각 Coordinator 별로 포함하는 View를 분리하였습니다
    - 자세한 Coordinator 흐름은 약간의 수정중에 있기 때문에, 추후 업데이트 할 예정입니다
