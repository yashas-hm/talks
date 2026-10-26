<div align="center">

# 🤖 AI on the Edge

### On-Device Machine Learning with Flutter & TensorFlow Lite

*What if your app could recognize images, process voice commands, or detect gestures, all without sending data to the
cloud?*

[![Slides](https://img.shields.io/badge/Slides-PDF-EA4335?style=for-the-badge&logo=googleslides&logoColor=white)](presentation.pdf)
[![GDG Event](https://img.shields.io/badge/DevFest-NC_2025-4285F4?style=for-the-badge&logo=google&logoColor=white)](https://gdg.community.dev/events/details/google-gdg-chapel-hill-presents-north-carolina-devfest-2025/)
![YouTube](https://img.shields.io/badge/YouTube-Coming_Soon-9AA0A6?style=for-the-badge&logo=youtube&logoColor=white)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white)
![TensorFlow Lite](https://img.shields.io/badge/TensorFlow_Lite-FF6F00?style=flat-square&logo=tensorflow&logoColor=white)
![Level](https://img.shields.io/badge/Level-Intermediate-FBBC04?style=flat-square)

</div>

---

## 📖 About the talk

In this talk, we show you how to run real machine learning models directly on users' devices using TensorFlow Lite and
Flutter. Learn to convert models, integrate them with the `tflite_flutter` plugin, and build apps that are fast,
private, and work completely offline.

Whether you're new to ML or already experimenting, this session will equip you to add real-time, powerful AI to your
Flutter apps, no cloud required.

## 🎯 What you'll learn

- 🔄 Converting TensorFlow models to `.tflite`
- 🔌 Integrating models with the `tflite_flutter` plugin
- 📷 Running real-time inference on a live camera feed
- ⚡ Performance and optimization tips for deploying AI at the edge

## 💻 Demo app: live object detection

The [`object-classifier`](./object-classifier) app uses Google's quantized **COCO (Common Objects in Context)** model to
detect 80 everyday objects in real time, entirely on-device.

```bash
cd object-classifier
flutter pub get
flutter run   # use a physical device for camera access
```

> [!NOTE]
> Want to bring your own model? See the [TensorFlow → TFLite conversion guide](./object-classifier/README.md).

### 📸 Screenshots

<p align="center">
  <img src="./examples/ss1.jpg" width="200" alt="Detection screenshot 1">
  <img src="./examples/ss2.jpg" width="200" alt="Detection screenshot 2">
  <img src="./examples/ss3.jpg" width="200" alt="Detection screenshot 3">
</p>
<p align="center">
  <img src="./examples/ss4.jpg" width="200" alt="Detection screenshot 4">
  <img src="./examples/ss5.jpg" width="200" alt="Detection screenshot 5">
  <img src="./examples/ss6.jpg" width="200" alt="Detection screenshot 6">
</p>

## 🔗 Resources

| Resource             | Link                                                                       |
|----------------------|----------------------------------------------------------------------------|
| 📦 tflite_flutter    | [pub.dev/packages/tflite_flutter](https://pub.dev/packages/tflite_flutter) |
| 🔄 Convert to TFLite | [Conversion guide](./object-classifier/README.md)                          |

---

<div align="center">

## 📫 Connect with me

[<img src="https://raw.githubusercontent.com/yashas-hm/yashas-hm/refs/heads/main/assets/website_badge.png" height=27 alt="Website">](https://yashashm.dev)
&nbsp;
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:yashashm.dev@gmail.com)
&nbsp;
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI%2BPHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0yMC40NDcgMjAuNDUyaC0zLjU1NHYtNS41NjljMC0xLjMyOC0uMDI3LTMuMDM3LTEuODUyLTMuMDM3LTEuODUzIDAtMi4xMzYgMS40NDUtMi4xMzYgMi45Mzl2NS42NjdIOS4zNTFWOWgzLjQxNHYxLjU2MWguMDQ2Yy40NzctLjkgMS42MzctMS44NSAzLjM3LTEuODUgMy42MDEgMCA0LjI2NyAyLjM3IDQuMjY3IDUuNDU1djYuMjg2ek01LjMzNyA3LjQzM2MtMS4xNDQgMC0yLjA2My0uOTI2LTIuMDYzLTIuMDY1IDAtMS4xMzguOTItMi4wNjMgMi4wNjMtMi4wNjMgMS4xNCAwIDIuMDY0LjkyNSAyLjA2NCAyLjA2MyAwIDEuMTM5LS45MjUgMi4wNjUtMi4wNjQgMi4wNjV6bTEuNzgyIDEzLjAxOUgzLjU1NVY5aDMuNTY0djExLjQ1MnpNMjIuMjI1IDBIMS43NzFDLjc5MiAwIDAgLjc3NCAwIDEuNzI5djIwLjU0MkMwIDIzLjIyNy43OTIgMjQgMS43NzEgMjRoMjAuNDUxQzIzLjIgMjQgMjQgMjMuMjI3IDI0IDIyLjI3MVYxLjcyOUMyNCAuNzc0IDIzLjIgMCAyMi4yMjIgMGguMDAzeiIvPjwvc3ZnPg%3D%3D)](https://www.linkedin.com/in/yashashm)
&nbsp;
[![X](https://img.shields.io/badge/X-%23000000.svg?style=for-the-badge&logo=X&logoColor=white)](https://twitter.com/YashasMajmudar)

<sub>[← Back to all talks](../README.md)</sub>

</div>
