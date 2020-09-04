# BLE Beacon을 활용한 실내 AR Navigation
* * *
### 프로젝트 목표
* 무선 신호를 이용한 실내 위치 측위 기반 서비스 구현  
* 실내 위치 측위 **정확도 향상**  
* 서비스를 **AR(Augmented Reality, 증강현실)** Application으로 제공  
  * 시각적인 서비스를 제공하기 때문에 직관적인 길찾기 서비스 이용 가능  
### 사용 Tool
- [x] Jupyter Notebook (Python)
- [x] TensorFlow
- [x] Eclipse
- [ ] Android Studio
- [x] Unity
- [x] SketchUp
### 프로젝트 소개 (간략)
> GPS는 실내에서 제한된 서비스이기 때문에 실내 위치 측위에 어려움이 있음  
> 이에 따라, 무선 신호를 이용한 실내 위치 측위를 위한 연구가 다양하게 진행 중  
> 실내 위치 측위의 **정확도**를 위하여 **Deep Learning**을 활용  
> **AR기술**을 양질의 서비스로 제공하기 위해 **Unity3D** Engine 및 **ARCore**을 활용  
### 프로젝트 BlockDiagram
<img src="/image/BD.png" width="600px" height="300px" alt="BlockDiagram"></img><br/>
> 총 4개의 BLE Beacon 무선 신호를 Client의 Phone에서 수신한 후 모든 Beacon의 신호 강도를 Server로 송신  
> Server에서는 신호 강도의 값들을 Kalman Filter를 이용하여 안정화한 후 학습 모델을 통하여 위치가 계산됨  
> 위치 좌표 값을 다시 Client로 송신하여 Client에서는 현재 위치 파악 및 길찾기 서비스 이용 가능  
### 프로젝트 3D Model
<img src="/image/D1.png" width="600px" height="300px" alt="BlockDiagram"></img><br/>
> **SketchUp**이라는 Tool을 사용하여 실내 환경과 흡사하도록 3D Model을 제작
