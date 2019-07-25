class BloadOath
    attr_reader :year, :month, :date

    def initialize(year, month, date)
        @year = year 
        @month = month
        @date = date
        @@all << self
    end

    @@all = []

    def self.all 
        @@all
    end

    def initiation_date
        "#{@year}-#{@month}-#{@date}"
    end

    # yikes
    def self.first_oath
    end

end

# i guess i;m supposed to create a new bloodoath every time a follower joins a cult or a cult recruits a follower? 
# how do you determine the initiation date?