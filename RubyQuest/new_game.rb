=begin
This is my attempt at writing a ruby text based
adventure game using classes and hashes.

to reference other files simply use require

require './rooms'
next steps, move classes into thier own files and create a new repo
then try to run the code from thier.
=end

require './Fight_class_attempt'

puts "Welcome to Ruby Quest!"
puts "You must search for the Ruby!"
puts "Please tell me your name seeker:"
name = gets.chomp
#create player class
class Player
	attr_accessor :name
	attr_accessor :health
	def initialize(name)
		@name = name
		@health = 20 #this makes more sense so we can track it during the game.
	end

	#this section will control the movement between rooms
	def enter(room) #we will pass each room from the array
		#evlaute if an enemy is in the room. and run the fight class
		if room.has_enemy
			fight = Fight.new(self,room.enemy) #player passes itself into the method to be used.
			fight.attack
		end
		#decide which way to go
		puts "The room is dark and cold!"
		puts "Which way? North, South East or West?"
		direction = gets.chomp.to_sym # must convert this to a symbol?
		until room.walls[direction] == "open" do
			puts "You stumble around in the dark. Choose a new direction"
			direction = gets.chomp
		end
			puts "You go to the next room!"
			#add movement into the next room array
	end #end enter

end
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
		#get direction
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

#rooms = Array.new(6,Room.new) #  this make the same copies.change the 6 to get any value i like. this is similar to the code above.

#this method will create 20 differnet rooms into the room array
rooms = []
5.times do
	rooms << Rooms.new
end

#this begin play as we enter each room
rooms.each do |room|
	player1.enter(room)
end

=begin
Next steps:
1. assign an enemy type into each room that has an enemy
2. figure out how to get the rooms into an array
3. write the logic to iterate through the rooms
and when encountering an enemy go to a fight class and run
the fight code. if the user wins, game on, set the rooms enemy value to
false. If they lose, game over.
4. If they complete each room, they will get the ruby.
5. In each room they musy try to guess the direction. write a loop
that will go until the guess the correct direction. Use the same code
but call it on each room class as they move through the castle.

=end	


class Enemy
	attr_accessor :alive
	attr_accessor :health
	def initialize
		@alive = true
		@health = 0
	end #initialize end
end #Enemy end

class Troll < Enemy
	def initialize
	@health = 5
	end
end

class Giant < Enemy
	def initialize
	@health = 6
	end
end

class Dragon < Enemy
	def initialize
	@health = 7
	end
end