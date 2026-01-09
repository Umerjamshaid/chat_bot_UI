# bot

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


[OnBoardingUI](https://whatfix.com/blog/onboarding-ux/)

[Flutter](https://www.google.com/search?q=making+an+onboarding+screens+in+fluttter&oq=making+an+onboarding+screens+in+fluttter&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQIRiPAjIHCAIQIRiPAtIBCTExODM5ajBqNKgCALACAQ&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:8245e502,vid:yfdcj7M83D0,st:0)




``` dart
 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),

              child: Text(
                'No login required for get started chat with our AI powered chatbot. Feel free to ask what you want to know.',
                // textAlign: TextAlign.center,
                style: GoogleFonts.onest(
                  fontSize: 16,
                  height: 1.2,
                  color: Color(0xFF1F1E58),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Image.asset(
                'assets/images/onboarding2.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
```


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