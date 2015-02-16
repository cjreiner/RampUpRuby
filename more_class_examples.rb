#code to help me understand class and instance and inheritance.

class Test 
	@@response = "This is a class level variable"

	def self.get_response
		@@response
	end

	
	attr_accessor :var1  #instance level
	#attr_accessor :response #this won't work. It's instance level

	
	def initialize
		@var1 = "This is var1 talking"
		@var2 = "This is var2 talking"
	end

	#this is a class level method.
	#it's called via this: puts Test::add(1,2)
	def self.add(num1,num2)
		num1+num2
	end

	#here' the same method, but instance level
	#it's called like this: 
	#myTest = Test.new
	#puts myTest.add(1,2)
	def add(num1,num2)
		num1+num2
	end
end

#Accessing the methods:

#This one calls the instance level
myTest = Test.new
puts myTest.add(1,2)

#This one calls the class level
puts Test.add(1,2)
#this syntax also works
puts Test::add(1,2)

#Accessing the variables:

puts Test.get_response #class level

puts myTest.var1 #instance level using the intance 
#we created above in line 32

#Everything is an object. This is startin to make since.
#let's explore it.

#some objects are part of Ruby core. Like "String"
#thus when we create a string, it's also a string object
#which is a class, of String. And the given string is an instance
#of the String class

#puts 12.capitalize # does not work since 12 is not a string.
puts 12.to_s.capitalize #works because we make it a string, then call the instance method "capitalize"
