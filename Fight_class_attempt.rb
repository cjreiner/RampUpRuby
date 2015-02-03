class Fight
	
	def initialize(player,enemy) #we can pass object player to other objects
		 #@attack_attempts=health
		 @player = player
		 @attack_location="High"
		 @block_location=0
		 @enemy = enemy
	end

=begin
This is an older attack method, no longer used
	def attack
		@attack_attempts.times do |x|
			puts "Attack number #{x}"
			puts "Enter a spot to strike! Pick a number between 1 and 10:"
			hit_spot = gets.chomp.to_i
			if hit_spot == @hit_spot
				puts "You won!"
				break
			end
		end
	end	
=end

	def attack
		until (@player.health==0 || @enemy.health==0) do
			puts "Choose your attack (High/Low):"
			@attack_location=gets.chomp.to_s.capitalize
			@block_location=rand(1..2)
			if (@attack_location=="High" && @block_location==1) || (@attack_location=="Low" && @block_location==2)
				puts "Success! -1 health to your enemy!"
				@enemy.health = @enemy.health - 1
			else
				puts "Miss! Try again! -1 health to you! OUCH!"
				puts "Your health is #{@health}"
				@player.health = @player.health - 1
			end #end if
		end #end until loop
		puts @player.health==0 ? "You lost! Game over" : "You win!"
	end #end attack 
end #end Fight#this section will control the movement between rooms
	def enter
		#evlaute if an enemy is in the room.
		fight


		#decide which way to go
		puts "The room is dark and cold!"
		puts "Which way? North, South East or West?"
		direction = gets.chomp.to_sym # must convert this to a symbol?
		until @walls[direction] == "open" do
			puts "You stumble around in the dark. Choose a new direction"
			direction = gets.chomp
		end
			puts "You go to the next room!"
			#add movement into the next room array
	end #end enter#this section will control the movement between rooms
	def enter
		#evlaute if an enemy is in the room.
		fight


		#decide which way to go
		puts "The room is dark and cold!"
		puts "Which way? North, South East or West?"
		direction = gets.chomp.to_sym # must convert this to a symbol?
		until @walls[direction] == "open" do
			puts "You stumble around in the dark. Choose a new direction"
			direction = gets.chomp
		end
			puts "You go to the next room!"
			#add movement into the next room array
	end #end enter

#health=3
#fight_troll = Fight.new(health,"Troll")
#fight_troll.attack