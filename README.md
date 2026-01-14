# Bot - AI Chatbot App

A Flutter-based chatbot application with an onboarding screen for user introduction.

## Getting Started

This project is a starting point for a Flutter application featuring an AI-powered chatbot.

### Prerequisites
- Flutter SDK installed
- Dart programming knowledge

### Resources for Beginners
If this is your first Flutter project, check out these resources:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For comprehensive help, visit the [official Flutter documentation](https://docs.flutter.dev/), which offers tutorials, samples, and API reference.

## Features
- Onboarding screens for new users
- AI-powered chatbot interface
- No login required for initial chat

## Onboarding UI Inspiration
- [Onboarding UX Best Practices](https://whatfix.com/blog/onboarding-ux/)
- [Flutter Onboarding Screens Tutorial](https://www.google.com/search?q=making+an+onboarding+screens+in+flutter)

## Code Snippets

### Text Widget Example
```dart
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: Text(
    'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
    // Uncomment below for center alignment
    // textAlign: TextAlign.center,
    style: GoogleFonts.onest(
      fontSize: 16,
      height: 1.2,
      color: Color(0xFF1F1E58),
    ),
  ),
),
```
*This snippet shows a styled text widget used in the onboarding description.*

### Image Widget Example
```dart
Padding(
  padding: const EdgeInsets.only(top: 45),
  child: Image.asset(
    'assets/images/onboarding2.png',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
),
```
*Displays an onboarding image with padding and cover fit.*

### Title Text Example
```dart
Text(
  'Start free Conversation',
  style: GoogleFonts.poppins(
    fontSize: 43,
    height: 1.4,
    fontWeight: FontWeight.w600,
    color: Color(0xFF1A1A4B),
  ),
),
```
*Bold title text for the onboarding screen using Poppins font.*

---

## Troubleshooting

### Previous Error: Null String Issue
*Note: This error has been resolved. See `FIXES.md` for details.*

**Error Message:**
```
type 'Null' is not a subtype of type 'String' of 'function result'
```

**Location:** Line 43 in `onboarding_card.dart` at `Image.asset()`.

**Code Context:**

**onboard_screen.dart:**
```dart
final List<Widget> _onBoardingPages = [
  OnboardingCard(image: "assets/images/onboarding2.png"),
];
```

**onboarding_card.dart:**
```dart
class OnboardingCard extends StatelessWidget {
  final String image;

  const OnboardingCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ... rest of the code
      Image.asset(  // Line 43 - Error occurred here
        image,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
```

**Troubleshooting Steps Tried:**
- Verified image file exists
- Confirmed assets declared in `pubspec.yaml`
- Ran `flutter pub get`
- Performed full app restart instead of hot reload
- Added debug prints to check image parameter

**Issue Analysis:** The error indicated the `image` parameter was receiving null instead of a string, despite passing the path correctly.

**Resolution:** The parameter was not being used in the widget; a hardcoded path was used instead. Fixed by using `this.image` in `Image.asset()`.

For more fixes and changes, refer to `FIXES.md`.

