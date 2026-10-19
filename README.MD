# 🦋 Flutter & Dart Engineering Playbook

![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-Framework%20%26%20Engine-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Architecture](https://img.shields.io/badge/Focus-Architecture%20%26%20Internals-success?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active%20Learning-orange?style=for-the-badge)

> **"Programming is about writing code that works. Software Engineering is about designing systems that scale, endure, and remain maintainable over time."**

## 📌 Overview & Purpose
Welcome to my **Flutter & Dart Engineering Playbook**. This repository serves as a structured engineering lab, second brain, and proof-of-work as I transition from intermediate Flutter development into **Senior-level Mobile Software Engineering**.

Rather than building simple CRUD apps or following surface-level tutorials, this repository documents my deep dive into Dart internals, Object-Oriented Design, Concurrency/Isolates, the Flutter Rendering Pipeline (`Widget`, `Element`, `RenderObject`), Software Architecture, Testing, and Security based on two foundational engineering books:

1. 📘 **Dart Apprentice: Beyond the Basics** *(Kodeco / Jonathan Sande)* — Focus: Advanced OOP, Generics, Event Loop, Streams, and Concurrency.
2. 🦋 **Flutter Engineering** *(Majid Hajian)* — Focus: Flutter Internals, Design Patterns, Architecture Styles, Testing, Security, and Performance.

---

## 🗂️ Repository Structure

Every chapter is isolated into its own module containing **concise architectural notes (`README.md`)** and **hands-on, runnable code/challenges (`challenge.dart`)**:

```text
flutter-engineering-playbook/
├── README.md                        # Progress tracker & roadmap
│
├── 01_dart_beyond_basics/           # Pure Dart deep-dive & challenges
│   ├── pubspec.yaml
│   └── lib/
│       ├── ch01_strings_and_regex/
│       ├── ch02_anonymous_functions/
│       ├── ch03_inheritance_and_composition/
│       ├── ch04_abstract_classes/
│       ├── ch05_interfaces/
│       ├── ch06_mixins/
│       ├── ch07_extension_methods/
│       ├── ch08_generics_and_trees/
│       ├── ch09_enhanced_enums/
│       ├── ch10_error_handling/
│       ├── ch11_concurrency_event_loop/
│       ├── ch12_futures/
│       ├── ch13_streams/
│       └── ch14_isolates/
│
├── 02_flutter_engineering/          # Software Engineering & Flutter Internals
│   ├── part01_core_and_internals/   # Ch 1-5: Trees, RenderObjects, FFI, SOLID, GoF Patterns
│   ├── part02_architecture/         # Ch 6-12: Clean Arch, BLoC/MVVM, Concurrency, Offline-First, DI
│   ├── part03_processes_and_tests/  # Ch 13-17: Linting, CI/CD, Git Hooks, Testing Pyramid, Flavors
│   ├── part04_security_and_a11y/    # Ch 18-21: OWASP Top 10, Cryptography, Privacy, Accessibility
│   └── part05_advanced_ui/          # Ch 22-26: Adaptive/Responsive UI, i18n/l10n, Theming, Shaders
│
└── 03_sandbox_app/                  # Flutter sandbox app for profiling, CustomPainters & RenderBoxes
```

---

## 📈 Progress Tracker

### Part I: Dart Apprentice — Beyond the Basics (Core Language Mastery)
- [ ] **Chapter 01:** String Manipulation, `StringBuffer` & Regular Expressions (`RegExp`)
- [ ] **Chapter 02:** Anonymous Functions, Higher-Order Functions, Tear-offs & Closures
- [ ] **Chapter 03:** Inheritance vs. Composition (`extends`, `super`, Polymorphism)
- [ ] **Chapter 04:** Abstract Classes & Contracts
- [ ] **Chapter 05:** Interfaces & Decoupling Business Logic (`implements`, Factory Constructors)
- [ ] **Chapter 06:** Mixins & Code Reuse (`mixin`, `with`, `on`)
- [ ] **Chapter 07:** Extension Methods
- [ ] **Chapter 08:** Generics, Binary Trees & Type Constraints (`<T extends Comparable>`)
- [ ] **Chapter 09:** Enhanced Enums & Operator Overloading
- [ ] **Chapter 10:** Error Handling, Stack Traces & Custom Exceptions
- [ ] **Chapter 11:** Concurrency, Event Loop, Event Queue vs. Microtask Queue
- [ ] **Chapter 12:** Futures, `async/await` & `Completer`
- [ ] **Chapter 13:** Streams, `async*` Generators, `StreamController` & `StreamTransformer`
- [ ] **Chapter 14:** Isolates (One-Way & Two-Way Communication with `SendPort` / `ReceivePort`)

---

### Part II: Flutter Engineering (By Majid Hajian)

#### 🔹 Section 1: Core Concepts, Internals & Design Patterns
- [ ] **Chapter 01:** Flutter Engineering Core Concepts (Cohesion, Coupling, Shifting Left, SDLC)
- [ ] **Chapter 02:** Unveiling Flutter Internals (Widget/Element/RenderObject Trees, Custom `RenderBox`, Keys)
- [ ] **Chapter 03:** Native Platform Integration (`MethodChannel`, `EventChannel`, `Pigeon`, `Dart FFI`, `FFIgen`)
- [ ] **Chapter 04:** Applying Engineering Principles (Dart 3 Class Modifiers, `covariant`, SOLID, DRY, YAGNI, Tell Don't Ask)
- [ ] **Chapter 05:** Design Patterns in Flutter (Singleton, Factory, Adapter, Decorator, Composite, Proxy, Facade, Command, Observer, Strategy, Template Method)

#### 🔹 Section 2: Software Architecture & State
- [ ] **Chapter 06:** Architectural Foundations (ADRs, Trade-offs, Conway's Law, Iterative Architecture)
- [ ] **Chapter 07:** Architectural Styles (Layered n-tier, Event-Driven / Event Bus, Microkernel / Plug-in Architecture)
- [ ] **Chapter 08:** UI Architecture Patterns (Three-Layer Repository, BLoC, MVVM, MVP/MVI/MVU, VIPER, Clean Architecture)
- [ ] **Chapter 09:** Concurrency and Parallelism in Flutter (`compute`, `Isolate.run`, Long-lived `IsolateController`)
- [ ] **Chapter 10:** Offline-First Capabilities (Pull/Push Sync, Conflict Resolution, Queues, Cache Invalidation)
- [ ] **Chapter 11:** State Management Strategy (Ephemeral vs. App State, Evaluating Solutions Architecturally)
- [ ] **Chapter 12:** Dependency Injection & IoC (Constructor Injection, `InheritedWidget`, Service Locator / `get_it`, `Riverpod`)

#### 🔹 Section 3: Development Lifecycle, Testing & Automation
- [ ] **Chapter 13:** Rules & Style Guidelines (Custom Scripts, Git Hooks, Static Analysis & `analysis_options.yaml`)
- [ ] **Chapter 14:** Collaboration in Development (Trunk-Based Development vs. GitFlow, CI/CD, Code Reviews)
- [ ] **Chapter 15:** The Art of Documentation (5W Approach, `DartDoc`, Living Documentation)
- [ ] **Chapter 16:** Testing in Flutter (Testing Pyramid, DAMP vs. DRY, Test Doubles: Stubs/Mocks/Fakes/Spies, `PaintPattern`, Golden Tests)
- [ ] **Chapter 17:** Environments & Flavors (Entry Points, `--dart-define-from-file`, CI/CD Integration)

#### 🔹 Section 4: Security, Privacy & Accessibility
- [ ] **Chapter 18:** Prioritizing Security (CIA Triad, OWASP Mobile Top 10, Obfuscation, RASP)
- [ ] **Chapter 19:** Cryptography in Flutter (Symmetric AES, Asymmetric RSA/ECC, Argon2id Key Derivation, Hashing & HMAC)
- [ ] **Chapter 20:** Protecting User Privacy (Privacy by Design, GDPR, PII Minimization)
- [ ] **Chapter 21:** Ensuring Accessibility / A11y (WCAG Pillars, Semantics Tree, `Semantics` Widgets, Accessibility Testing)

#### 🔹 Section 5: Advanced UI, Localization & Graphics
- [ ] **Chapter 22:** Crafting Adaptive UIs (Input Methods, Focus Traversal, Keyboard Shortcuts, Visual Density)
- [ ] **Chapter 23:** Responsive UI Techniques (Breakpoints, Strategy Pattern with `LayoutBuilder`, Custom Multi-Child Layouts)
- [ ] **Chapter 24:** Internationalization (`i18n`) & Localization (`l10n`) (ARB Files, ICU Syntax, Plurals/Selects, RTL Support)
- [ ] **Chapter 25:** Embracing Theming (Material 3 `ColorScheme`, `MaterialStateProperty`, Custom `ThemeExtension`)
- [ ] **Chapter 26:** Custom Painters & Shaders (`Canvas`, `RepaintBoundary`, `PictureRecorder`, `Vertices.raw`, Fragment Shaders / GLSL)

---

## 🚀 How to Run the Examples

**1. Running Pure Dart Challenges (`01_dart_beyond_basics`):**
```bash
cd 01_dart_beyond_basics
dart run lib/ch03_inheritance_and_composition/challenge.dart
```

**2. Running Flutter Sandbox & Engineering Patterns (`03_sandbox_app`):**
```bash
cd 03_sandbox_app
flutter pub get
flutter test
flutter run
```
