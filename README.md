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





--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------


































Great question! This is an important concept about **StatefulWidget** vs **StatelessWidget**.

---

## The Difference: `controller` vs `widget.controller`

### In StatelessWidget - Use `controller`

```dart
class CustomEmailField extends StatelessWidget {
  final TextEditingController controller;
  
  const CustomEmailField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,  // ✅ Direct access - just "controller"
    );
  }
}
```

**Why?** In `StatelessWidget`, you're directly inside the widget class, so you can access `controller` directly.

---

### In StatefulWidget - Use `widget.controller`

```dart
class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;  // ← This lives in StatefulWidget
  
  const CustomPasswordField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,  // ✅ Must use "widget.controller"
      obscureText: _isObscured,       // ✅ Direct access to State variables
    );
  }
}
```

**Why?** Because `controller` is defined in the **StatefulWidget class**, but the `build()` method is in the **State class**. They are **two separate classes**!

---

## Understanding the Two Classes

When you create a `StatefulWidget`, Flutter creates **TWO objects**:

1. **StatefulWidget object** - Holds the configuration (properties passed from parent)
2. **State object** - Holds the mutable state and builds the UI

```dart
// CLASS 1: Configuration (immutable)
class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;  // ← Lives here
  final String? hintText;                  // ← Lives here
  
  // Constructor receives values
  const CustomPasswordField({
    required this.controller,
    this.hintText,
  });
  
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

// CLASS 2: State (mutable)
class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;  // ← Lives here (can change)
  
  @override
  Widget build(BuildContext context) {
    // To access controller, you need to go through "widget"
    // because controller lives in the OTHER class
    return TextFormField(
      controller: widget.controller,  // widget = reference to StatefulWidget
      obscureText: _isObscured,       // Direct access (same class)
    );
  }
}
```

---

## Visual Explanation

Think of it like two people:

```
Person 1 (StatefulWidget):
  - Has: controller, hintText, labelText
  - These NEVER change
  - This person holds the "instructions"

Person 2 (State):
  - Has: _isObscured (can change!)
  - This person does the actual work
  - To access Person 1's stuff, says "widget.controller"
```

---

## More Examples to Clarify

### Example 1: Accessing Different Variables

```dart
class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;  // ← From parent
  final String? hintText;                  // ← From parent
  
  const CustomPasswordField({
    required this.controller,
    this.hintText = 'Enter password',
  });
  
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;        // ← Managed by State
  String _currentInput = '';      // ← Managed by State
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // From StatefulWidget class - use "widget."
          controller: widget.controller,
          hintText: widget.hintText,
          
          // From State class - direct access
          obscureText: _isObscured,
          
          onChanged: (value) {
            setState(() {
              _currentInput = value;  // Direct access
            });
          },
          
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;  // Direct access
              });
            },
            icon: Icon(
              _isObscured ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        
        Text('Length: ${_currentInput.length}'),  // Direct access
      ],
    );
  }
}
```

**Rule of thumb:**
- Variables in `StatefulWidget` → use `widget.variableName`
- Variables in `State` → use `variableName` directly

---

## Why This Design?

Flutter separates them because:

1. **Widget objects are recreated** frequently (they're immutable)
2. **State objects persist** across rebuilds (they hold changing data)
3. This separation makes Flutter fast and efficient

```dart
// Widget gets recreated
CustomPasswordField(controller: _controller)  // New object created

// BUT State persists
_CustomPasswordFieldState  // Same object, keeps _isObscured value
```

---

## Quick Test: Can You Predict?

```dart
class Counter extends StatefulWidget {
  final String title;  // Where does this live?
  
  const Counter({required this.title});
  
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;  // Where does this live?
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // How to access title? __________
        // How to access _count? __________
        
        Text('_______'),  // Show title
        Text('Count: _______'),  // Show count
        
        ElevatedButton(
          onPressed: () {
            setState(() {
              _______++;  // Increment count
            });
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
```

**Answers:**
```dart
Text(widget.title),      // title lives in StatefulWidget
Text('Count: $_count'),  // _count lives in State
_count++;                // Direct access
```

---

## Summary

| Variable Location | How to Access | Example |
|------------------|---------------|---------|
| In `StatelessWidget` | Direct: `variableName` | `controller` |
| In `StatefulWidget` | Via widget: `widget.variableName` | `widget.controller` |
| In `State` class | Direct: `variableName` | `_isObscured` |

**Simple Rule:** 
- If the variable is in the **same class** you're writing code → direct access
- If the variable is in the **StatefulWidget class** but you're in **State class** → use `widget.`

---

Does this make sense now? Want to continue with the original topic or dive deeper into StatefulWidget? 🚀