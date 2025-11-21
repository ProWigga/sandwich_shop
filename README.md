# Sandwich Shop

A simple Flutter sample app that demonstrates a cross-platform "Sandwich Shop" UI. The app is a minimal Flutter project with mobile (Android / iOS), web, and desktop (Windows / Linux / macOS) runner code included.

# Key features
- Simple home screen and counter UI implemented in Flutter. See [`main`](lib/main.dart) and the [`MyHomePage`](lib/main.dart) widget.  
- Platform-specific runner code for desktop platforms:
  - Linux GTK integration and app lifecycle in [`MyApplication`](linux/runner/my_application.h) / [`my_application_new`](linux/runner/my_application.cc) and [`my_application_activate`](linux/runner/my_application.cc).
  - Windows Win32 runner and window management in [`FlutterWindow::OnCreate`](windows/runner/flutter_window.cpp), [`CreateAndAttachConsole`](windows/runner/utils.cpp) and [`GetCommandLineArguments`](windows/runner/utils.cpp).
  - macOS window setup in [`MainFlutterWindow`](macos/Runner/MainFlutterWindow.swift) and app delegate in [`AppDelegate`](macos/Runner/AppDelegate.swift).
- Plugin registration placeholders: [`RegisterPlugins`](windows/flutter/generated_plugin_registrant.cc) and [`fl_register_plugins`](linux/flutter/generated_plugin_registrant.cc) are present but empty in this project.

![Main UI] (assets/projectUI.png)

Getting started

# Prerequisites
- Flutter SDK (stable). See flutter.dev for install instructions.
- Platform-specific toolchains:
  - Android: Android SDK and an emulator/device.
  - iOS/macOS: Xcode (macOS only).
  - Windows: Visual Studio with Desktop development with C++ workload.
  - Linux: GTK+ 3 and usual build tools (cmake, gcc, etc).
- CMake (used by desktop runners).

Clone the repository

`git clone https://your.remote/repo.git sandwich_shop`
`cd sandwich_shop`

Install dependencies:

`flutter pub get`

Run the app

Run on the default connected device:

`flutter run`

Choose a specific device:
Android / iOS / web: use flutter devices to list IDs then:
flutter run -d <device-id>
Desktop:
flutter run -d windows
flutter run -d linux
flutter run -d macos
Development notes

Hot reload works as usual:

`flutter run`
make code changes, then press "r" in the terminal for hot reload

Usage

Main flows

Open the app to view the Order screen.
Use "Add" to increment quantity; UI updates to display sandwich emoji for each item (up to the configured max).
Use "Remove" to decrement quantity; it will not go below zero.
Use the bread Dropdown to change bread type (e.g., white, wheat, wholemeal).
Enter a note in the notes TextField (keyed for tests) to attach to the order; the UI shows the note below the order display.
Configuration

Common configuration lives in pubspec.yaml (dependencies, assets).
Platform-specific build configs are in the corresponding platform folders (windows/, linux/, macos/, web/, ios/).
Running tests

Run unit and widget tests:

`flutter test`

Example tests exist under:
test/views/widget_test.dart (widget coverage for order interactions and small reusable widgets)




For further enquiries: upXXXXXXX@myport.ac.uk

