class Question
  attr_accessor :question, :options, :correct_answer

  def initialize(question, options, correct_answer)
    @question = question
    @options = options
    @correct_answer = correct_answer
  end
end

quiz_questions = {
  "Math" => [
    Question.new("What is 2 + 2?", ["3", "4", "5", "6"], "4"),
    Question.new("What is 3 * 7?", ["15", "18", "21", "24"], "21"),
    Question.new("What is the square root of 16?", ["2", "4", "6", "8"], "4")
  ],
  "Science" => [
    Question.new("What is the chemical symbol for oxygen?", ["O2", "O3", "O", "H2O"], "O"),
    Question.new("What planet is known as the Red Planet?", ["Earth", "Mars", "Venus", "Jupiter"], "Mars"),
    Question.new("Who discovered penicillin?", ["Marie Curie", "Louis Pasteur", "Alexander Fleming", "Isaac Newton"], "Alexander Fleming")
  ],
  "History" => [
    Question.new("In which year was the Declaration of Independence signed?", ["1776", "1789", "1801", "1812"], "1776"),
    Question.new("Who was the first President of the United States?", ["Thomas Jefferson", "George Washington", "Abraham Lincoln", "John Adams"], "George Washington"),
    Question.new("What event marked the start of World War II?", ["The sinking of the Lusitania", "The signing of the Treaty of Versailles", "The bombing of Pearl Harbor", "The Russian Revolution"], "The bombing of Pearl Harbor")
  ]
}

def run_test(questions)
  score = 0

  questions.each do |topic, topic_questions|
    puts "\nTopic: #{topic}"
    topic_questions.each do |question|
      puts "\nQuestion: #{question.question}"
      question.options.each_with_index do |option, index|
        puts "#{index + 1}. #{option}"
      end

      user_answer = gets.chomp.to_i - 1
      if question.options[user_answer].downcase == question.correct_answer.downcase
        puts "\nCorrect!\n"
        score += 1
      else
        puts "\nIncorrect. The correct answer is '#{question.correct_answer}'.\n"
      end
    end
  end

  puts "\nQuiz complete! Your score: #{score} out of #{questions.values.flatten.length}\n\n"
end

run_test(quiz_questions)