#  Domain/Interface

### 설명

- `Domain` 레이어의 `UseCase`에서 `Data` 레이어의 `Repository`에 메시지를 전송할 수 있도록 만든 `추상화`된 `Repository`입니다

- `Data` 레이어에서 `Domain` 레이어를 알고 있기 때문에, 추상화 된 `Repository`의 구현 단계에서 DTO를 `.toDomain()`으로 `Domain` 레이어의 `Entity`로 DataMapping 하도록 구현해야 합니다

- 이 부분도 아직 세부사항은 설계가 필요한 부분입니다

