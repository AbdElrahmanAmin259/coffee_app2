# ☕ Coffee App

A polished Flutter coffee ordering UI showcase focused on smooth animations, interactive components, and reusable widgets.

## 🎬 Demo

[▶️ Watch the demo video](https://github.com/AbdElrahmanAmin259/coffee_app2/blob/main/assets/screenshot.mp4)

## ✨ Features

* **Animated drinks list** — cards smoothly scale based on the current scroll position.
* **Details carousel** — horizontal `PageView` with animated scale and translation effects.
* **Dynamic drink information** — name, description, and price update automatically while swiping.
* **Hot / Iced toggle** — custom animated segmented control.
* **Quantity selector** — reusable increment/decrement widget.
* **Reusable components** — UI elements are separated into dedicated widgets.
* **Smooth page transitions** — interactive animations for a polished user experience.

## 🛠 Tech Stack

| Technology                    | Usage                            |
| ----------------------------- | -------------------------------- |
| **Flutter**                   | Cross-platform UI development    |
| **Dart**                      | Programming language             |
| **StatefulWidget / setState** | Local state management           |
| **PageView**                  | Horizontal drink carousel        |
| **AnimatedBuilder**           | Scroll and page-based animations |
| **AnimatedContainer**         | Animated UI components           |
| **Transform**                 | Scale and translation effects    |

## 📁 Project Structure

```text
lib/
├── main.dart                  # App entry point
├── pageview.dart              # Home screen / drinks list
├── components/
│   ├── drink.dart             # Drink card widget
│   ├── qty_widget.dart        # Quantity selector
│   └── toggle_widget.dart     # Hot / Iced toggle
└── model/
    ├── model.dart             # Drink data model
    └── drink_detalis.dart     # Drink details screen

assets/
├── drinks/                    # Drink images
└── screenshot.mp4             # Demo video
```

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* Dart SDK
* Android Studio or VS Code
* Android emulator or a physical Android device

### Installation

Clone the repository:

```bash
git clone https://github.com/AbdElrahmanAmin259/coffee_app2.git
```

Navigate to the project directory:

```bash
cd coffee_app2
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## 🎯 What I Practiced

This project was built to practice and demonstrate several Flutter concepts:

* Building reusable Flutter widgets.
* Managing local UI state with `StatefulWidget` and `setState`.
* Working with `PageController` and `PageView`.
* Creating scroll-driven animations.
* Using `AnimatedBuilder` for efficient animated UI updates.
* Applying `Transform` for scale and position effects.
* Structuring a Flutter project into models and reusable components.
* Creating interactive UI components from scratch.

## 👤 Author

**Abdelrahman Amin**

Flutter & Mobile App Developer

* GitHub: [@AbdElrahmanAmin259](https://github.com/AbdElrahmanAmin259)
