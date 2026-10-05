# ☕ Coffee App

A polished Flutter UI showcase for a drinks ordering app, featuring a scroll-driven scaling list, a horizontal carousel with animated transitions, and custom interactive widgets.

---

## 🎬 Demo

<video src="https://github.com/AbdElrahmanAmin259/coffee_app2/raw/main/assets/screenshot.mp4" controls width="320"></video>

---

## ✨ Features

- **Animated drinks list** — cards scale smoothly based on scroll position.
- **Details carousel** — horizontal `PageView` with scale + translate effects between items.
- **Dynamic header** — name, description, and price update live while swiping.
- **Hot / Iced toggle** — custom animated segmented switch.
- **Quantity selector** — reusable increment/decrement widget.
- **Reusable components** — each UI piece lives in its own widget.

---

## 🛠 Tech Stack

| | |
|---|---|
| Framework | Flutter |
| Language | Dart |
| State | `StatefulWidget` / `setState` |
| Animations | `AnimatedBuilder`, `AnimatedContainer`, `Transform` |

---

## 📁 Project Structure

```
lib/
├── main.dart                  # App entry point
├── pageview.dart              # Home screen (drinks list)
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

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or later)
- An emulator or physical device

### Run the project

```bash
git clone https://github.com/AbdElrahmanAmin259/coffee_app2.git
cd coffee_app2
flutter pub get
flutter run
```

---

## 👤 Author

**Abdelrahman Amin** — Flutter Developer

- GitHub: [@AbdElrahmanAmin259](https://github.com/AbdElrahmanAmin259)