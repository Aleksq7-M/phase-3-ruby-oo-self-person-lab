# your code goes here

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness if happiness > 0 && happiness < 10
        @hygiene = hygiene if hygiene > 0 && hygiene < 10
    end

    def happiness=(value)
        @happiness = value
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        @hygiene = value 
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end

    end

    def clean?
        return self.hygiene > 7
    end

    def happy? 
        return self.happiness > 7
    end

    def get_paid (amount)
        self.bank_account += amount
        return "all about the benjamins"
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

    def call_friend (friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        case topic
        when 'politics'
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when 'weather'
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end
