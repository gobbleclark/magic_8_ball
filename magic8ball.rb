require 'pry'
require 'colorize'
class UserQuestions
    attr_accessor :userquestions

    def initialize 
        @userquestions = []
    end 

    def resetinput
        @resetinput = [@autoresponses]
    end 

    def addanswers
        @addanswers = []
    end
end

class MagicEight
    attr_accessor :answer
    def initialize
    @auto_responses = [
        "You shouldn't ask something like this".colorize(:green),
        "How did you know?".colorize(:green),
        "Only in your wildest dreams".colorize(:green),
        "haha.. what kind of question is that?".colorize(:green),
        "Sorry.. but no.".colorize(:green),
        "Are you sure you wanted to ask that?".colorize(:green),
    ]
    
    main_menu
    end
    def main_menu
        puts "Welcome to the most magical 8 ball.".colorize(:blue)
        puts ""
        puts "What would you like to do today?".colorize(:red)
        puts ""
        puts "1) Ask you a question"
        puts "2) Add new answers to Magic 8 ball"
        puts "3) Reset me to all original answers"
        puts "4) See all my current answers"
        puts "5) Exit"
        input = gets.strip.to_i
        case input
        when 1
            take_question
         when 2
            add_answers
         when 3
            reset_answer
         when 4
            see_answers
         when 5
            exit_program
         else 
            puts "Invalid Response"
        end
       
    end

    def take_question
        puts "What question do you have?".colorize(:red)
        input = gets.strip
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        answer_question
    end

     def add_answers
        puts "Type your wanted answers:".colorize(:red)
        input = gets.strip
        @auto_responses << input
        
        puts "This answer has been added.".colorize(:green)
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        main_menu
    end

    def reset_answer
        puts "Please select the number of answer that you want to delete.".colorize(:red)
        @auto_responses.each.with_index do |a, i|
            puts "#{i + 1}) #{a}"      end
        input = gets.strip.to_i
        @auto_responses.delete(input)
        puts "You have reset to our default answers.".colorize(:green4)
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        main_menu
    end

    def see_answers
      puts  "Here are all your current answers".colorize(:red)
      
    @auto_responses.each.with_index do |a, i|
      puts "#{i + 1}) #{a}"
                                    end
        
         puts ""
         puts ""
         puts ""
         puts ""
         puts ""                           
          main_menu
    end

    def answer_question
        puts "A N S W E R:".colorize(:green)
        puts "#{@auto_responses.sample}"
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
        main_menu
    end

    def exit_program
       puts "Thanks for being here. Type 'quit' to exit program.".colorize(:red)
       input = gets.strip 
       if 
        input == "quit"
        input == "Quit"
       else 
        put "good-bye".colorize(:red)
       end
    end
end
eight = MagicEight.new