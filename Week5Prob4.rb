#Week5 RampUp Problem 4

puts "Enter text, when done press enter on a blank line:"

words=[]
entry='a'

until entry==''
	entry = gets.chomp
	words.push(entry)
end

puts words.reverse