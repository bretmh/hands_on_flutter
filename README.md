# Flutter Interview Project Intro

Welcome to the Flutter Interview Project. You will have a total of '60 minutes' to complete the action items below. Please note that you will not be graded on your design/UX skills.

## Prerequisites

- **Flutter**: Channel stable, version 3.22.2 installed.
- **Git**: Installed and able to clone a project.
- **IDE**: Your choice of IDE, with VSCode being a recommended option.
- **Android Virtual Device**: Set up for debugging and verifying solutions.
- **Microsoft Teams**: For screensharing or an equivalent platform.
- **Screensharing**: Must be on for the entire duration of the project.
- **Restrictions**:
  - No use of GitHub Copilot or generative AI of any kind.
  - No outside help except for Flutter documentation or package documentation.
  - Please ask your interviewer any questions you have during the project.

## Information

- You will not be graded on your design/UX skills.
- The only valid login credentials for the BackendAuthApi are: `flutter@isawesome.com:Password123%`.
- You can use packages, especially for state management, such as Bloc or Riverpod.
- This project uses named routes; check the `main.dart`.

## Action Items

Complete these action items in any order you see fit.

### Auth Repository (lib/features/auth/repositories)

- Implement the `AuthRepository` interface. Your implementation needs to use the `BackendAuthApi` class and call the `loginHandler` method.
- Handle the JSON string returned from the `BackendAuthApi`'s as you see fit.

### AuthResponse Model

- Finish implementing the `AuthResponse` class used in the `AuthRepository`. Add what you see fit to complete the tasks below.

### Bonus

Separate the business logic out of the UI code. You can decide how you want to do this.

### Login Screen UI (lib/features/auth/screens)

- Add an input field for email.
- Add an input field for password.
- Add a login button.
- The login button callback needs to:
  - Verify the entered email follows the format of an email.
  - Verify the password is **at least 8 characters long**, uses **numbers and letters**, and has **at least one** of the following special characters: **!, @, #, $, %, &**.
  - Call your `AuthRepository` implementation, sending the email and password entered.
- Handle any loading states in the UI.
- Show a Snackbar for any errors received.
- Navigate to the named route '/home' upon successful login.

### Home Screen UI (lib/common/screens)

- Add a logout button that navigates back to the login screen.
