## This is a sample game to work with
## IF, ,ands, or's, and getting user prompts
## also does some looping

puts "You are on a quest. You must find the gold!"

direction = "" #iniialize variable

until direction == "South" do #loops keeps asking for direction till user selects South

	puts "Do you go North, South, East, or West?"
	direction = gets.chomp

	if direction == "North"
		puts "You are lost"
	elsif direction == "South"
		puts "You are heading to the right place!"
	elsif direction =="East"
		puts "Closer, but not quite right!"
	elsif direction == "West"
		puts "Closer, but not quite right!"
	end
end

#Part 2 begins, Cave or Path decided

puts "Ok, you've gone South and are closer to the gold!"
puts "You are now in a hot jungle. This jungle has trolls and rats as large as people"
puts "There is a cave to your left, and an overgrown path to your right."
puts "Do you want to go into the CAVE, or take the PATH?"
direction2 = gets.chomp

#CAVE path

if direction2 == "CAVE"
	puts "You have entered a dark cave"
	puts "You encounter a troll!"
	puts "Oh no! He doesn't look nice!"
	puts "Do you RUN or FIGHT?"
	fight_or_flight = gets.chomp
	
	if fight_or_flight == "RUN"
		puts "You can't run! He's too fast!"
	end
	puts "Prepare to fight!"
	puts "To win, you must select his weak spot before he takes away your health"

	health = 6 #initialize health counter
	hit_spot = 0 #initialize hit tracker 

	until (hit_spot==7) || (health==0) do
		puts "Enter a spot to stirke! Pick a number between 1 and 10:"
		hit_spot = gets.chomp.to_i #needs the to_i so it's a number and not a string. Without this the compare in the until loop wasn't working
		health = health - 1
		puts "Your heath is at level #{health}"
	end

	if hit_spot = 7
		puts "You did it! You defeated the cave troll!"
		puts "You found the gold!"
	end

	if health = 0
		puts "Oh No! You were defeated by the case troll!"
		puts "GAME OVER!"
	end
end	

#PATH path

if direction2 == "PATH"
	puts "Sorry, this part of the game is still in design"
end