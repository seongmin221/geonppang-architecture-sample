#  Presentation

### 간략한 설명

- Clean Architecture의 Presentation Layer입니다
- 앱의 User Interaction 부분을 담당합니다
- `Domain` 레이어와 `Core/DesignSystem`에 의존하고 있습니다


### 구성 요소
- `Common`: 전반적으로 자주 사용되는 UIComponent를 구현해 두는 폴더입니다
    - `Presentation` 레이어가 `Domain` 레이어에 의존하고 있기에, `UseCase`를 갖고 있지는 않지만, **사용처를 알도록** 구현 가능합니다
    - e.g. `BakeryListCommonCell`, `BakeryListCollectionViewLayout`

- `Utils`: **UI와 관련된** extension 및 유용한 도구들을 모아두는 폴더입니다
    - Convention: `UIViewController+<extension 내용>`
        - e.g. `UICollectionView+Register`
        ```swift
        extension UICollectionView {
    
            /// cell 여러개
            
            func registerCells(cells: [UICollectionViewCell.Type]) { /* implementation */ }
            
            func registerHeaders(headers: [UICollectionReusableView.Type]) { /* implementation */ }
            
            func registerFooters(footers: [UICollectionReusableView.Type]) { /* implementation */ }

            /// cell 1개

            func register<T: UICollectionViewCell>(cell: T.Type) { /* implementation */ }

            func register<T: UICollectionReusableView>(header: T.Type) { /* implementation */ }
            
            func register<T: UICollectionReusableView>(footer: T.Type) { /* implementation */ }
        }
        ```

- `Flow`: Coordinator Pattern을 적용했기 때문에, 각 Coordinator 별로 포함하는 View를 분리하였습니다
    - 자세한 Coordinator 흐름은 약간의 수정중에 있기 때문에, 추후 업데이트 할 예정입니다
