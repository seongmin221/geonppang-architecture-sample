# 건빵 아키텍쳐 샘플

## Overview

### 설명 

- 건빵은 (리팩토링 이후) `Clean Architecture`, `MVVM-C`, `UIKit(Code-based)`, `Combine`, `URLSession`을 기본적으로 사용합니다

- [건빵](https://github.com/GEON-PPANG/GEON-PPANG-iOS)의 아키텍쳐 및 프로젝트 샘플입니다

- 각 파일과 폴더별로 어떤 용도로 사용되는지, 왜 그렇게 적용했는지 기록해두기 위해 만들게 되었습니다

### 설계 시 생각한 것들

- 각 폴더링을 `직관적`으로 하자

- 레이어별로 의존성을 확실하게 구분하자
  - `Presentation` -> `Domain`
  - `Presentation` -> `Core`
  - `Data` -> `Domain`
  - `Data` -> `Core`
  - `Application` -> 모든 레이어

- 설계하면서, 각각 레이어에 필요한 요소들의 의미와 이유를 파악하자

- 웬만한 객체 간의 메시지 전송은 Protocol로 하자

<br>

## Coodinator 설계

![Frame 988103](https://github.com/seongmin221/geonppang-architecture-sample/assets/72431640/d6da7818-154a-4f72-9df1-8df472037b34)



(수정 중..)
