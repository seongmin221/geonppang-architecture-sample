#  Domain/Error

### 설명

- `Domain` 레이어에서 발생하는 `Error` 들을 포함하는 폴더입니다

- e.g. 텍스트필드의 글자 수를 제한하는 `UseCase`에 대한 `Error`
    ```swift
    enum TextFieldError: Error {
        case overLimitError
    }
    ```
