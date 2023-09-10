class Question
    attr_accessor :prompt, :answer

    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
        end
    end

    P1 = "What is 2 + 2?\n(a)3\n(b)4\n(c)5\n(d)6"
    P2 = "What is 3 * 7?\n(a)15\n(b)18\n(c)21\n(d)24"
    P3 = "What is the square root of 16?\n(a)2\n(b)4\n(c)6\n(d)8"
    
    question = [
        Question.new(P1, "b"),
        Question.new(P2, "c"),
        Question.new(P3, "b")
    ]

    def run_test(questions)
        answer = ""
        score = 0
        for question in questions
            puts question.prompt
            answer = gets.chomp()
        if answer == question.answer
            score += 1
            puts "Correct!\n"
        else
            puts "Incorrect. The correct answer is '#{question.answer}'.\n"
            end
        end

         puts "Quiz complete! You got #{score}/#{questions.length}"
    end

run_test(question)