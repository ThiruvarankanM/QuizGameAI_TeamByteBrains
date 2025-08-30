# QuizGame TeamByteBrains

An AI-powered terminal-based quiz game developed by Team ByteBrains. Features multiple-choice questions with intelligent hint system and AI-generated feedback using Google Gemini to enhance learning experience.

## Features

- Multiple-choice questions with four options (a, b, c, d)
- Score tracking throughout the quiz
- Manual hints after first incorrect answer
- AI-generated correct answers after second incorrect attempt
- Terminal-based interactive interface
- Built with Jac programming language
- Google Gemini AI integration for intelligent feedback

## Tech Stack

- **Jac Language** - Core quiz logic and execution
- **Google Gemini AI** - AI-powered answer feedback via API
- **Python** - Backend AI API integration
- **Terminal/Console** - User interface
- **VS Code** - Development environment

## How It Works

1. Game displays welcome message and presents questions sequentially
2. Each question shows four answer options (a, b, c, d)
3. User input is evaluated:
   - **Correct answer**: Score increases, "Correct!" message shown
   - **First incorrect attempt**: Manual hint provided
   - **Second incorrect attempt**: AI generates correct answer explanation
4. Process repeats for all questions
5. Final score and performance summary displayed

## AI Integration

- Triggered only on second incorrect attempt per question
- Uses Gemini 1.5 Flash model via Jac's AI integration
- Generates helpful responses with correct answer format:
  ```
  ✅ Correct answer: a
  ```

## Setup

### Prerequisites
- JacLang CLI installed
- Python 3.12 or above
- Google Gemini API key

### API Key Configuration
1. Visit [Google MakerSuite](https://makersuite.google.com/app)
2. Generate new API key from profile menu
3. Set environment variable:
   ```bash
   export GEMINI_API_KEY="your_api_key_here"
   # Windows: set GEMINI_API_KEY=your_api_key_here
   ```

### Run Game
```bash
# Run the quiz
jac run quiz_game.jac
```

## Game Demo Screenshots

| Step | Description | Screenshot |
|------|-------------|------------|
| 1 | Quiz Launch | ![Step 1](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/1.png) |
| 2 | Multiple-choice Question | ![Step 2](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/2.png) |
| 3 | Manual Hint Display | ![Step 3](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/3.png) |
| 4 | AI-Generated Answer | ![Step 4](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/4.png) |
| 5 | Correct Answer Confirmation | ![Step 5](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/5.png) |
| 6 | Final Score Display | ![Step 6](https://github.com/ThiruvarankanM/QuizGame_TeamByteBrains/blob/28c45491939ec67d4979f25d1d93d2f56f2e942a/QuizGame_Run_Demo/6.png) |

## Development Team

Team ByteBrains

## License

MIT License
