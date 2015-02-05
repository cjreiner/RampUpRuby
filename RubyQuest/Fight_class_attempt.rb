class Fight
	
	def initialize(player,enemy,room) #we can pass object player and enemy into this Fight class and thus access it's attributes
		 @player=player
		 @enemy=enemy
		 @room=room
		 @attack_location
		 @block_location	 
	end

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
		
		if @player.health==0
			puts "You lost! Game over"
			exit
		else 
			"You win! This room is now clear"
			@room.has_enemy = false
		end
	
	end #end attack 
end #end Fight
