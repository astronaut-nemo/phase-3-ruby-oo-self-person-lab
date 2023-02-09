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

    # Happiness setter method happiness=
    def happiness= (value)
        if(value < 0)
            @happiness = 0
        elsif(value>10)
            @happiness = 10
        else
            @happiness = value
        end
    end # end of happiness=

    # Hygiene setter method hygiene=
    def hygiene= (value)
        if(value < 0)
            @hygiene = 0
        elsif (value > 10)
            @hygiene = 10
        else
            @hygiene = value
        end
    end # end of method hygiene=
end

stella = Person.new("Stella")
# binding.pry