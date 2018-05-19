require_relative("calcs.rb")

class Input
  attr_accessor :student_name, :score1, :score2, :score3, :students_and_scores

  def user_input
    @students_and_scores = { }
    counter = 0
    while counter < 100
      puts "Enter the students name: "
      @student_name = gets.chomp
      puts "Enter the first test score:"
      @score1 = gets.chomp
      puts "Enter the second test score: "
      @score2 = gets.chomp
      puts "Enter the third test score:"
      @score3 = gets.chomp
      puts "Are all the grades entered"
      @question = gets.chomp

      @students_and_scores[@student_name] = [@score1, @score2, @score3]

      break if @question == "Yes"
      counter += 1
    end
  end
end

new_grades = Input.new
new_grades.user_input

new_calc = Calculator.new

new_calc.average(new_grades.students_and_scores)
