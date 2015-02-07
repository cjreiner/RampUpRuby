##Code for Week 2 Lab
##Assignment 1

##This section calc using pounds
def price_of_gold_from_pounds(pounds)
	ounces = pounds * 16
	price_of_gold_pounds(ounces)
end

def price_of_gold_pounds(ounces)
	ounces*1336 #the price of gold per ounce
end

def gold_calc_pounds()
	puts "Enter pounds of gold:"
	pounds = gets.to_f
	price = price_of_gold_from_pounds(pounds)
	puts "The gold costs #{price}."
end	

#This section calcs using kilograms
def price_of_gold_from_kilograms(kilograms)
	ounces = kilograms * 35.274
	price_of_gold_kilograms(ounces)
end

def price_of_gold_kilograms(ounces)
	ounces*1336 #the price of gold per ounce
end

def gold_calc_kilograms()
	puts "Enter kilograms of gold:"
	kilograms = gets.to_f
	price = price_of_gold_from_kilograms(kilograms)
	puts "The gold costs #{price}."
end	

##This section gets user input on what method to use
puts "Enter Pounds of Kilograms?"
type = gets.chomp

if(type=="Kilograms")
	gold_calc_kilograms()
else
	gold_calc_pounds()
end