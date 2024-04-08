#  Utils

### 설명

- UI와 관련된 extension 및 필요한 도구들을 모아두는 폴더입니다

- 파일 이름은 `UIViewController+<extension 내용>`로 짓습니다
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

    - e.g. `UICollectionView+Dequeue`
        ```swift
        extension UICollectionView {
            func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
                guard let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as? T else {
                    fatalError("Could not dequeue cell with identifier: \(T.identifier)")
                }
                return cell
            }
            
            func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind: String, indexPath: IndexPath) -> T {
                guard let supplementaryView = dequeueReusableSupplementaryView(ofKind: ofKind, withReuseIdentifier: T.identifier, for: indexPath) as? T else {
                    fatalError("Could not dequeue supplementary view with identifier: \(T.identifier)")
                }
                return supplementaryView
            }
        }
        ```
