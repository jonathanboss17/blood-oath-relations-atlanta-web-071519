class Cult 
    attr_accessor :name, :location, :founding_year, :slogan, :followers

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year 
        @slogan = slogan
        @followers = []
        @@all << self
    end

    @@all = []

    def recruit_follower(follower)
        follower.cults << self
        @followers << follower
    end

    def cult_population
        @followers.size
    end

    def self.all 
        @@all
    end

    def self.find_by_name(name)
        self.all.select {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.map do |cult|
            if(cult.location == location)
                cult
            end
        end
    end

    def self.find_by_founding_year(year)
        self.all.map do |cult| 
            if(cult.founding_year == year)
                cult
            end
        end
    end

    def average_age
        ages = []
        self.followers.each do |i|
            ages << i.age
        end
        avg = ages.sum.to_f / ages.size
        avg
    end

    def my_followers_mottos
        self.followers.each do |f|
            puts f.life_motto
        end
    end

    def self.least_popular
        self.all.min {|a, b| a.followers.count <=> b.followers.count}
    end

    # yikes
    def self.most_common_location
    end

end