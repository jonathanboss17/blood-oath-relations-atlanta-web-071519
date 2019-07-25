require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult = Cult.new('x', 'swiss', 1920, 'z')
cult2 = Cult.new('cheese', 'swiss', 1920, 'queso')
cult3 = Cult.new("logansda", "Cali", 1987, "biscuits")

f1 = Follower.new("jon", 17, "potatoes")
f2 = Follower.new("bob", 10, "bacon")
f3 = Follower.new("jerry", 52, "chicken")


cult.recruit_follower(f1)
cult.recruit_follower(f2)

cult2.recruit_follower(f3)
f1.join_cult(cult3)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
