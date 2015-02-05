=begin
This is my attempt at writing a ruby text based
adventure game using classes and hashes.
=end

#require files/gems as needed
require './enemy_class.rb'
require './Player_class.rb'
require './Fight_class_attempt.rb'

#Begin main program

puts "Welcome to Ruby Quest!"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
#create player class
player1 = Player.new(name)

#generate an array of the rooms
class Room
	attr_accessor :has_enemy
	attr_accessor :walls
	attr_accessor :enemy
	
	def initialize
		@has_enemy = assign_enemy #calls it each time we initialize
		if @has_enemy
			case rand(1..3)
				when 1 then @enemy = Troll.new
				when 2 then @enemy = Giant.new
				when 3 then @enemy = Dragon.new
				else @enemy = Troll.new
			end
		end 
		
		#create the walls hash
		@walls = { 
			:North => "",
			:South => "",
			:East => "",
			:West => ""
		}
		#randomly assign the open direction
		open_wall = rand(1..4)
		case open_wall
			when 1 then @walls[:North] = "open"
			when 2 then @walls[:South] = "open"
			when 3 then @walls[:East] = "open"
			when 4 then @walls[:West] = "open"
			else @walls[:North] = "open"
		end #end Case open_wall
	end #end initialize

	#randomly determine if this room will have an enemy
	def assign_enemy
		@has_enemy = rand(1..2)==1 ? true : false
		#need an enemy value for the room.
	end #end assign_enemy

end #end class Room

#=begin
rooms = Array.new

5.times do
	rooms << Room.new
end

#this begin play as we enter each room
#so now, head over the to player class to follow the
#rest of this code....

rooms.each do |room|
	puts room.has_enemy
	puts room.walls
	player1.enter(room)
end
#=end


#room = Room.new
#fight = Fight.new(player1,room.enemy,room.has_enemy) #player passes itself into the method to be used.
#fight.attack