# Expense Tracker

A modern and intuitive Flutter application designed to help users track their daily expenses efficiently. This app offers a clean user interface to add, view, and manage personal finances.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android">
  <img src="https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white" alt="iOS">
</p>

## 🚀 Features

- **Add New Expenses:** Easily record new expenses with a title, amount, date, and category.
- **Categorization:** Organize your spending into different categories (e.g., Food, Travel, Leisure, Work).
- **Date Tracking:** Select specific dates for each expense to maintain an accurate history.
- **Dynamic List:** View all expenses in a scrollable list format.
- **Responsive Design:** Optimized for both Android and iOS devices.
- **Custom App Icon:** Features a minimalist black and white company logo for a professional look.

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Packages:**
  - `intl`: For date formatting.
  - `uuid`: For generating unique IDs.
  - `flutter_launcher_icons`: For managing app icons.

## 📂 Project Structure

The project follows a modular structure for better maintainability:

```
lib/
├── models/
│   └── expense.model.dart       # Data model for Expense class
├── widgets/
│   ├── expenses_list/
│   │   ├── expenses_list.dart   # Widget to display the list of expenses
│   │   └── expens_item.dart     # Widget for individual expense items
│   ├── expenses.dart            # Main screen widget
│   └── new_expense.dart         # Form widget for adding new expenses
└── main.dart                    # Application entry point
```

## 🏁 Getting Started

Follow these steps to get the project up and running on your local machine.

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- An IDE (VS Code, Android Studio, or IntelliJ) with Flutter plugins.
- An emulator or physical device.

### Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/expense-tracker.git
    cd expense-tracker
    ```

2.  **Install dependencies:**

    ```bash
    flutter pub get
    ```

3.  **Run the app:**

    ```bash
    flutter run
    ```

## 📸 Screenshots

*(Add your app screenshots here to showcase the UI)*

| Home Screen | Add Expense |
|:---:|:---:|
| <img src="assets/screenshots/home.png" alt="Home Screen" width="250"> | <img src="assets/screenshots/add_expense.png" alt="Add Expense" width="250"> |

> **Note:** Replace the placeholder paths with actual screenshots of your application.

## 🤝 Contributing

Contributions are welcome! If you have any suggestions or improvement ideas, please create a pull request or open an issue.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
