# your code goes here
class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8

    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene= 0 if @hygiene < 0
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness= 0 if @happiness < 0
    end

    def clean?
        hygiene > 7
    end

    def happy?
       happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
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

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
   
end


#     def take_bath

#     end

#     def work_out

#     end

#     def call_friend

#     end

#     def start_conversation(1,2)
#         if topic = politics then both people get sadder and return "blah blah partisan blah lobbyist"
#         if the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
#         if the topic is not politics or weather, their happiness points dont change and the method returns "blah blah blah blah blah".
           
#     end
# end



















