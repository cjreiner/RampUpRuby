#Week 5 RampUp

#1

puts "Enter a number:"
x = gets.chomp.to_i

if x>10
	puts "Big"
end

#2
if x<=10 && x>-1
	puts "Small"
end

#3
if x>14 && x<100 && x%2==0
	puts "Dog"
end

if (x>=100 && x<=1000) || x%2!=0
	puts "ELephant"
else
	puts "Bananas"
end