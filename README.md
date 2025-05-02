# Flutter Quiz App

A beautiful and interactive quiz application built with Flutter.

## Features

- **Start Page**

  - Beautiful purple gradient background
  - Welcome message and quiz logo
  - Start Quiz button with haptic feedback
![image](https://github.com/user-attachments/assets/77755660-2812-491e-9069-62e0d567ca06)

- **Quiz Questions**

  - Multiple choice questions
  - Custom styled answer buttons (80% screen width, semi-transparent)
  - Visual feedback for correct/incorrect answers
![image](https://github.com/user-attachments/assets/14d1ee65-7f5f-4d14-8fdf-1a9797ac1710)

- **Results Summary**
  - Scrollable summary of all questions
  - Color-coded question numbers (green for correct, red for incorrect)
  - Shows both user's answer and correct answer
  - Takes 60% of screen height for better visibility
  - Semi-transparent purple containers for each question
![image](https://github.com/user-attachments/assets/02cc34f4-2c84-453f-852f-c679c62c2205)

## Project Structure

```
lib/
├── main.dart
├── screens/
│   ├── start_page.dart
│   ├── quiz_page.dart
│   ├── question_page.dart
│   └── questions_summary.dart
├── widgets/
│   └── answer_button.dart
├── models/
│   └── quiz_question.dart
└── data/
    └── questions.dart
```

## Widgets

- **AnswerButton**: Custom styled button for quiz answers

  - Takes 80% of screen width
  - Semi-transparent background
  - Rounded corners
  - Custom padding and text styling

- **QuestionsSummary**: Scrollable summary of quiz results
  - Color-coded question indicators
  - Clear question and answer display
  - Responsive height (60% of screen)
  - Beautiful container styling

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## Dependencies

- Flutter SDK
- Material Design widgets
- Flutter Services (for haptic feedback)
