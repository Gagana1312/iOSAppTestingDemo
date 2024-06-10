# iOS Login Testing Demo

This is an iOS project that implements a simple login functionality and includes UI testing using XCUITest. The project demonstrates how to login, handle login attempts, and perform UI tests to ensure the functionality works as expected.

## Features

- Simple login screen with username and password fields.
- Welcome message displayed upon successful login.
- Error alert displayed upon failed login attempt.
- XCUITest cases to verify login functionality.

## Requirements

- Xcode 12.0 or later
- iOS 14.0 or later
- Swift 5.0 or later

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/gagana.1312/iOSAppTestingDemo.git
    ```
2. Open the project in Xcode:
    ```bash
    cd Testing
    open Testing.xcodeproj
    ```

## Usage

### Running the App

1. Open the project in Xcode.
2. Select a simulator or a connected device.
3. Press `Cmd + R` to build and run the app.

### Login Functionality

- Enter `Gagana` as the username and `Ananda` as the password to successfully log in and see the welcome message.
- Enter any other credentials to see an error alert.

### Running UI Tests

1. Open the project in Xcode.
2. Select a simulator.
3. Press `Cmd + U` to run the tests.

## Project Structure

- `ViewController.swift`: Contains the main view controller with login functionality.
- `Testing.xcodeproj`: The Xcode project file.
- `TestingTests/TestingUITests.swift`: Contains the UI tests for the project.
