# Bug Fixes

# Bot - AI Chatbot App

A modern Flutter-based chatbot application featuring an intuitive onboarding experience, chat bubbles, and a sleek user interface.

## Features

- **Onboarding Experience**: Smooth onboarding screens to introduce users to the app
- **Chat Interface**: Interactive chat screen with bubble-style messages
- **Authentication**: Login and signup screens with validation
- **Drawer Navigation**: Sidebar with chat history and settings
- **Password Strength**: Real-time password strength indicator
- **Responsive Design**: Works on multiple screen sizes
- **Custom Fonts**: Uses Neurial Grotesk font family for modern typography

## Screenshots

*Add screenshots of your app here*

## Installation

### Prerequisites
- Flutter SDK (version 3.10.4 or higher)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- Android/iOS device or emulator

### Setup
1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd bot
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Building for Release

### Android APK
```bash
flutter build apk --release
```

### Android App Bundle (Recommended)
```bash
flutter build appbundle --release
```

### iOS (on macOS)
```bash
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── onboard_screen.dart       # Onboarding screens
├── chat_screen.dart          # Main chat interface
├── Splash.dart               # Splash screen
├── Registration/
│   ├── login_screen.dart     # Login screen
│   └── Signup_screen.dart    # Signup screen
├── Validators/
│   └── validators.dart       # Input validation logic
├── Wigidts/                  # Custom widgets
├── Tests/                    # Test files
└── Classes/                  # Data models
```

## Dependencies

- `chat_bubbles`: For chat bubble UI components
- `google_fonts`: Custom typography
- `smooth_page_indicator`: Page indicators
- `ionicons`: Icon library

## Getting Started with Development

If this is your first Flutter project, check out these resources:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For comprehensive help, visit the [official Flutter documentation](https://docs.flutter.dev/).

