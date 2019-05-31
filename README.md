## [HYU] 2019_1학기_사회데이터조사방법론_실습

## 개발 환경 설정 (based on OSX)
### Requirements
- [R Language](https://www.r-project.org/)
- [R Studio IDE](https://www.rstudio.com/products/rstudio/download/)

위 Requirements를 자신의 운영체제(OS)에 맞게 설치

1. R Language는 Mac OSX의 패키지 매니저인 Homebrew를 이용해 설치한다.
```
brew install r (high sierra 버전부터 가능, 이전 버전은 아래의 URL 참조)
```
https://stackoverflow.com/questions/20457290/installing-r-with-homebrew

2. R Studio IDE는 Standalone 설치 가능

## 실습 Overview
| 날짜   |      실습 내용      |
|----------|:-------------:|
| 2019-03-29 | week1 - 전체적인 내용 및 설치, R Lang 기본적인 내용 수업 |
| 2019-04-05 | week2 - R Data Types (list, vector, data frame, data table) |
| 2019-04-12 | week3 - 데이터 import 후 분산, 평균, 편차 분석 관련 내용 |
| 2019-05-03 | week9 - 상관관계 분석에 관련된 Basic Contents |
| 2019-05-10 | week10 - Basic and 데이터 조작 및 추출 관련 함수 |
| 2019-05-17 | week11 - Plot, Mfrow, Jitter, Points, Identify, Legend 등의 함수 사용법 |
| 2019-05-24 | week12 - T-검정, 분산분석, 회귀분석 |
| 2019-05-24 | 회귀 분석 변수 선택 (step forward, backward, both) + 판별 분석 |

## Miscellaneous

### 데이터 타입
- 벡터: `c()`
- 행렬: `matirx()`
- 배열: `array()`
- 데이터프레임: `data.frame()`
- 리스트: `list()`

### 데이터의 행과 열 합치기
분리되어 저장된 데이터를 합치는데 유용하게 사용한다.
- `rbind()`
- `cbind()`
