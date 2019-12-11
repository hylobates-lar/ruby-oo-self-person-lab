class Person

    attr_reader :name, :happiness, :hygiene 
    attr_accessor :bank_account
    @@all = []
     
     def initialize(name)
       @name = name
       @bank_account = 25
       @happiness = 8
       @hygiene = 8

       @@all << self
     end

     def happiness=(new_happiness_value)
        if new_happiness_value > 10
          @happiness = 10
        elsif new_happiness_value < 0
          @happiness = 0
        else
            @happiness = new_happiness_value
        end
     end

     def hygiene=(new_hygiene_value)
        if new_hygiene_value > 10
            @hygiene = 10
        elsif new_hygiene_value < 0
            @hygiene = 0
        else
              @hygiene = new_hygiene_value
        end
     end

     def clean?
        @hygiene > 7
     end

     def happy?
        @happiness > 7
     end

     def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
     end

     def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
        @friend = friend

        self.happiness += 3
        @friend.happiness += 3

        return "Hi #{@friend.name}! It's #{self.name}. How are you?"   
     end

     def start_conversation(name, topic)
        @topic = topic
        friends = [self, name]

        if @topic == "politics"
            friends.each do |person|
                person.happiness -= 2
            end
            return "blah blah partisan blah lobbyist"
        elsif @topic == "weather"
            friends.each do |person|
                person.happiness += 1
            end
            return  "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

     end

end