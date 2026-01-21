
# 💸 Expense Tracker

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)

A modern, intuitive **Flutter** application designed to help you track your personal expenses efficiently. Manage your daily spending with ease, visualize your habits, and stay on top of your budget with a clean, premium user interface.

---

## ✨ Features

| Feature | Description |
| :--- | :--- |
| **📝 Smart Logging** | Quickly add expenses with a title, amount, date, and category. |
| **📂 Categorization** | Organize spending into **Food**, **Travel**, **Leisure**, and **Work**. |
| **📅 Date Picker** | Seamlessly select transaction dates with a native calendar picker. |
| **📊 Expense List** | Scroll through your history with a smooth, optimized list view. |
| **👋 Swipe to Delete** | Remove items effortlessly by swiping left or right. |
| **↩️ Undo Support** | Accidentally deleted something? Restore it instantly with the customized Snackbar. |
| **🎨 Minimal Design** | Enjoy a clean, distraction-free UI with a custom black-and-white aesthetic. |
| **💾 Local Storage** | Persist your data securely on your device using **SQLite**. |



<!-- ## 📸 Screenshots

<p align="center">
  <img src="https://via.placeholder.com/300x600?text=Dashboard" alt="Dashboard" width="200"/>
  <img src="https://via.placeholder.com/300x600?text=Add+Expense" alt="Add Expense" width="200"/>
  <img src="https://via.placeholder.com/300x600?text=Empty+State" alt="Empty State" width="200"/>
</p>

> *Note: Replace the placeholders above with actual screenshots of your application.* -->

---

## 🛠️ Tech Stack

This project is built using the following technologies and packages:

*   **[Flutter](https://flutter.dev/)** - UI Toolkit for building native apps.
*   **[Dart](https://dart.dev/)** - The programming language used.
*   **[UUID](https://pub.dev/packages/uuid)** - For generating unique identifiers.
*   **[Intl](https://pub.dev/packages/intl)** - For date formatting and internationalization.
*   **[Flutter Launcher Icons](https://pub.dev/packages/flutter_launcher_icons)** - For effortless app icon generation.
*   **[SQFLite](https://pub.dev/packages/sqflite)** - SQLite plugin for local data persistence.
*   **[Path](https://pub.dev/packages/path)** - For reliable file path handling.

---

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

*   **Flutter SDK**: [Install Flutter](https://docs.flutter.dev/get-started/install) (`v3.10.7` or higher recommended)
*   **Dart SDK**: Included with Flutter.
*   **IDE**: VS Code or Android Studio with Flutter & Dart extensions.

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/yourusername/expense_tracker.git
    cd expense_tracker
    ```

2.  **Install dependencies**
    ```bash
    flutter pub get
    ```

3.  **Run the app**
    ```bash
    flutter run
    ```

---

## 📂 Project Structure

A quick look at the top-level directory structure:

```
lib/
├── models/
│   └── expense.model.dart    # Data models & Enums
├── widgets/
│   ├── expenses_list/        # List components
│   │   ├── expens_item.dart  # Single list item widget
│   │   └── expenses_list.dart# List container with Swipe-to-Delete
│   ├── expenses.dart         # Main Dashboard Screen
│   └── new_expense.dart      # Add Expense Modal
└── main.dart                 # App Entry Point
```

---

## 🤝 Contributing

Contributions make the open-source community an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
