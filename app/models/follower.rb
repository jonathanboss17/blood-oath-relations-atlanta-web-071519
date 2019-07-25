class Follower 
    
    attr_accessor :name, :age, :life_motto, :cults

    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    @@all = []

    # when a follower joins a cult a bload oath is made
    def join_cult(cult)
        cult.recruit_follower(self)
        
    end

    def self.all 
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.map do |follower|
            if(follower.age >= age)
                follower
            end
        end
    end

    def my_cults_slogans
        self.cults.map {|i| i.slogan}
    end

    def self.most_active 
        self.all.max {|x, y| x.cults.count <=> y.cults.count}
    end

    # yikes
    def self.top_ten
    end


end