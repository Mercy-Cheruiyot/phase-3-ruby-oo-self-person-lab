class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    
def initialize(name = "Stella", bank_account = 25, happiness= 8, hygiene =8)
    @name= name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene= hygiene
    # @happy = happy
end
# def happiness=(happiness)
#     if (happiness.class == Integer && happiness.between?(0,10))
#         @happiness = happiness
#     else
#         happiness = 10
#     end
# #    @happiness=(happiness.class == Integer && happiness.between?(0,10))
# end
def happiness=(happiness)
 

    if (happiness.class == Integer && happiness.between?(0,10))
        @happiness = happiness
    elsif (happiness <= 0)
       @happiness = 0
    else 
        @happiness = 10 
    end
  
end


def hygiene=(hygiene)
    if(hygiene < 0)
        @hygiene = 0
    elsif(hygiene <=10)
        @hygiene = hygiene
    else
        @hygiene = 10
    end
end

def happy?
    @happiness > 7
end
def clean?
    @hygiene > 7
end
def get_paid(amount)
    @bank_account += amount.to_i
 "all about the benjamins"
end
def take_bath
    self.hygiene = (@hygiene +=  4 )
    "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    self.hygiene = (@hygiene -= 3)
    self.happiness=( @happiness += 2)
    return "♪ another one bites the dust ♫"
end
def call_friend(friend)
    self.happiness = ( @happiness += 3)
    friend.happiness = (friend.happiness + 3)
     "Hi #{friend.name}! It's #{@name}. How are you?"

end
def start_conversation (friend, topic)
    if (topic == "politics")
        self.happiness = (@happiness -= 2)
        friend.happiness = (friend.happiness - 2)
        "blah blah partisan blah lobbyist"
    elsif (topic == "weather")
        self.happiness = (@happiness + 1)
        friend.happiness = (friend.happiness + 1)
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
end
end
 person= Person.new
friend =Person.new
