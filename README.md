### Project Title

Flutter Navigation and UI Example

### Description

This project is a simple Flutter application demonstrating navigation between pages and dynamic UI updates using a `BottomNavigationBar`. The main page (`FirstPage`) contains a button that changes its text when pressed and another button that navigates to a `SecondPage`. The `BottomNavigationBar` allows switching between a home view and an images view, with icons that change color and size based on selection.

### Features

- **Navigation**: Navigate between `FirstPage` and `SecondPage`.
- **Dynamic UI**: Change button text dynamically.
- **Bottom Navigation**: Switch between different views using a `BottomNavigationBar`.
- **Responsive Icons**: Icons in the `BottomNavigationBar` change color and size based on selection.

### Screenshots

![Home View](screenshots/home_view.png)
![Images View](screenshots/images_view.png)
![Second Page](screenshots/second_page.png)

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/flutter-navigation-ui-example.git
    cd flutter-navigation-ui-example
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Run the app**:
    ```sh
    flutter run
    ```

### Usage

- **Home View**: Press the button to shuffle and display a new text.
- **Images View**: View a list of images.
- **Navigate to Second Page**: Press the circular button to navigate to the `SecondPage`.

### Code Structure

- `lib/main.dart`: Entry point of the application.
- `lib/firstPage.dart`: Contains the `FirstPage` widget with dynamic UI and navigation logic.
- `lib/secondPage.dart`: Contains the `SecondPage` widget.

### Dependencies

- `flutter/material.dart`: Core Flutter framework for building UI.
- `secondPage.dart`: Custom page for navigation.

### Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a pull request.

### Contact

- **Author**: Sarvin ShrivShrivastava 
- **Email**: sarvin5124@gmail.com
- **GitHub**: [sarvinshrivastava](https://github.com/sarvinshrivastava)
