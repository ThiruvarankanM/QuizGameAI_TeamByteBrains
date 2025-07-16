impl QuizGame.start_quiz {
    visit [-->];
}

impl QuizGame.answer_question {
    print(f"Question {self.question_num}:");
    print(here.question);
    print();
    for opt in here.options {
        print(opt);
    }

    self.attempt_count = 0;

    while self.attempt_count < 2 {
        user_answer = input("\nYour answer (a/b/c/d): ");

        if user_answer.lower() == here.correct.lower() {
            print("✅ Correct!\n");
            self.score += 1;
            break;
        } else {
            self.attempt_count += 1;

            if self.attempt_count == 1 {
                print("❌ Incorrect.");
                print(f"💡 Hint: {here.hint}");
            } else {
                print("❌ Incorrect again.");
                try {
                    ai_output = give_final_answer(here.question, here.correct);
                    print(f"✅ Correct answer: {ai_output}");
                } except Exception as e {
                    print(f"✅ Correct answer: {here.correct}");
                }
            }
        }
    }

    self.question_num += 1;

    next_q = [-->];
    if next_q {
        visit next_q;
    } else {
        print("\n🎉 Quiz Complete! Your final score: " + str(self.score) + "/3");

        if self.score == 3 {
            print("🌟 Perfect score! Excellent knowledge of Sri Lanka!");
        } elif self.score == 2 {
            print("👍 Good job! You know Sri Lanka well!");
        } elif self.score == 1 {
            print("📚 Not bad! Keep learning about Sri Lanka!");
        } else {
            print("🔄 Time to brush up on Sri Lanka facts!");
        }
    }
}
