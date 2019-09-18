require 'pry'
class Person

    attr_reader :name, :hygiene
    attr_accessor :bank_account, :happiness

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def minMax (num)
        if num  > 10
             10
        elsif num  < 0
             0
        else 
             num 
        end
    end

    def hygiene=(num)
       @hygiene = minMax(num) 
    end

    def happiness=(num)
      @happiness =  minMax(num) 
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend (callee)
        callee.happiness += 3
        self.happiness += 3
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic.eql? "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic.eql? "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
