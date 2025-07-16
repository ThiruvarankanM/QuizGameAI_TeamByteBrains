import from mtllm.llms { Gemini }

glob llm = Gemini(model_name="gemini-1.5-flash", verbose=False);

def give_final_answer(question: str, correct: str) -> str by llm();

walker QuizGame {
    has score: int = 0;
    has attempt_count: int = 0;
    has question_num: int = 1;
    can start_quiz with `root entry;
    can answer_question with question_node entry;
}

node question_node {
    has question: str;
    has options: list[str];
    has correct: str;
    has hint: str;
}

with entry:__main__ {
    print("🎯 Welcome to the Sri Lanka Quiz Game!");
    print("=" * 40);

    q1 = root ++> question_node("What is the capital of Sri Lanka?",
        ["a) Colombo", "b) Kandy", "c) Jaffna", "d) Galle"], "a",
        "It's in the Western Province.");
        
    q2 = q1 ++> question_node("Which year did Sri Lanka gain independence?",
        ["a) 1956", "b) 1948", "c) 1972", "d) 1931"], "b",
        "It happened shortly after World War II.");

    q3 = q2 ++> question_node("What is the currency of Sri Lanka?",
        ["a) Rupee", "b) Ringgit", "c) Taka", "d) Baht"], "a",
        "It's also the currency of India, but with 'Sri Lankan' in front.");

    root spawn QuizGame();
}
