require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    # Intialize a new person
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # Happiness setter method happiness= : sets 0>=happiness<=10
    def happiness= (value)
        if(value < 0)
            @happiness = 0
        elsif(value>10)
            @happiness = 10
        else
            @happiness = value
        end
    end # end of happiness=

    # Hygiene setter method hygiene= :sets 0>=hygiene<=10
    def hygiene= (value)
        if(value < 0)
            @hygiene = 0
        elsif (value > 10)
            @hygiene = 10
        else
            @hygiene = value
        end
    end # end of method hygiene=

    # clean? method: returns true if the person's hygiene is more than 7
    def clean?
        self.hygiene > 7 ? true : false
    end

    # happy? method: returns true if the person's happiness is more than 7
    def happy?
        self.happiness > 7 ? true : false
    end

    # get_paid method: accepts a salary amount and adds to the person's bank account + return the string "all about the benjamins"
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    # take_bath method: increments the person's hygiene points by four + returns the string "♪ Rub-a-dub just relaxing in the tub ♫"
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # work_out method: increments the person's happiness by 2 points + decreases their hygiene by 3 points + returns the string "♪ another one bites the dust ♫"
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    # call_friend method: accepts another instance of Person as "friend" + increments the person's and the friend's happiness by 3 points + return a string "Hi #{friend.name}! It's #{self.name}. How are you?"
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # start_conversation method: accepts two arguments: friend and topic.
        # If topic == politics, happiness of both friend and person decreases by 2 points + returns "blah blah partisan blah lobbyist"
        # else if topic == weather, happiness of both friend and person increases by 1 + returns "blah blah sun blah rain"
        # else (ie topic is neither politics or weather), happiness does NOT change + returns "blah blah blah blah blah"
    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
            
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"

        else "blah blah blah blah blah"
        end
    end
end

stella = Person.new("Stella")
jeb = Person.new("Jeb")
# binding.pry