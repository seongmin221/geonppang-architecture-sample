#  Domain/Entity

### 설명

- `Domain` 레이어에서 가공되어 사용될 데이터의 형태입니다

- `Presentation` 레이어에 뿌려지는 데이터를 보고 설계했으나, 설계 과정에 참고한 것이기에 `Presentation` 레이어를 알지는 못합니다

- `Presentation` 레이어에서 `Entity` 형태 그대로 넣으면, 뷰에 적합한 데이터가 넣어지도록 설계하였습니다
    - 이 과정에서 재사용되는 `Entity`를 최대화하기 위해 `Entity`를 세분화했습니다

