<div align="center">

# 🧱 Building Apps Like LEGO

### One Core, Many Products

*I inherited an AI-generated Flutter app. Here's what it cost me.*

[![Slides](https://img.shields.io/badge/Slides-PDF-EA4335?style=for-the-badge&logo=googleslides&logoColor=white)](presentation.pdf)
![GDG Event](https://img.shields.io/badge/GDG_Event-Coming_Soon-9AA0A6?style=for-the-badge&logo=google&logoColor=white)
![YouTube](https://img.shields.io/badge/YouTube-Coming_Soon-9AA0A6?style=for-the-badge&logo=youtube&logoColor=white)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white)
![Architecture](https://img.shields.io/badge/Topic-Architecture-34A853?style=flat-square)
![Level](https://img.shields.io/badge/Level-Intermediate-FBBC04?style=flat-square)

</div>

---

## 📖 About the talk

A really good Flutter app already looks like LEGO. Auth, HTTP clients, logging and the design system should be bricks
you can snap in and out, long before there is ever a second app to prove it.

This talk is the real story of inheriting an app built mostly by AI: god files, magic values, and no module boundaries.
When app #2 came along, almost nothing carried over, and every brick had to be rebuilt from scratch.

> [!IMPORTANT]
> These boundaries are not a reaction to AI. They are what makes AI-generated code safe to ship.

## 🎯 What you'll learn

- 🧱 What counts as a brick: auth, networking, logging and design system
- 🧭 How module boundaries steer AI through **contracts**, **guardrails** and **context**
- 📦 When to extract shared packages, and what to share vs. keep app-specific
- ⚖️ One core package vs. split packages, and how pub workspaces + Melos fit in
- 🎚️ Shipping a change to only some apps with feature flags, DI, config and versioned packages
- 🗺️ A practical framework for deciding when to modularize, duplicate or extract

## 📊 The payoff

|                       ⏱️ 1–2 days                        |         ♻️ 30–45%          |                 🐛 1 fix                 |
|:-------------------------------------------------------:|:--------------------------:|:----------------------------------------:|
| to stand up a new app's core infra, down from 1–2 weeks | of code reused across apps | for a shared bug, instead of one per app |

## 🗺️ The framework

|    | Rule                      | When                                                                                  |
|:--:|---------------------------|---------------------------------------------------------------------------------------|
| 🟦 | **Modularize as a brick** | if more than one part of the app, or a future app, would need it unchanged            |
| 🟨 | **Duplicate on purpose**  | if the logic is genuinely app-specific and sharing it would force a false abstraction |
| 🟩 | **Extract to a package**  | once a second consumer actually exists, not before. Speculative packages rot          |
| 🟥 | **Revisit the boundary**  | the moment a core change starts needing app-specific exceptions                       |

## 🏗️ Example workspace layout

```
packages/
  core_auth/
  core_network/
  core_logging/
  core_design_system/
apps/
  app_one/
  app_two/
  app_three/
```

```yaml
# root pubspec.yaml
workspace: [ packages/*, apps/* ]
```

## 🔗 Resources

| Resource               | Link                                                                   |
|------------------------|------------------------------------------------------------------------|
| 📦 Dart pub workspaces | [dart.dev/tools/pub/workspaces](https://dart.dev/tools/pub/workspaces) |
| 🛠️ Melos               | [melos.invertase.dev](https://melos.invertase.dev)                     |

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
