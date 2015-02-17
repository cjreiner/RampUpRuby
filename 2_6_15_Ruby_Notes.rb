#this coming week do week 4-6 homeworks

=begin
"enumerable" is for anything we can iterate over. like a hash or array
this is a module that anything that ierates can call it's method's.
if you can do an "each" on an object, 
you can do any method from the enumerables module on the object

check out the map and each_with_object functions as examples. also play more with
hashes and array using the stuff we find in enumerables to edit
them. make system to enter info like a contact book.

in pry, you can type the class/module .ancestors to see what it includes.

Section below is modules
kernal is the ruby module with a lot of the common souce code.

=end

module Animal
	def make_noise
		"Growl"
	end
end

class Dog
	include Animal
	def bark
		"woof woof"
	end
end

myDog = Dog.new

puts myDog.make_noise

=begin 
creating a namepsace: use modules and put classes inside them so you can do this:
=end

module Drinks
	class Beer
		attr_reader :kind
		def initialize
			@kind=10
		end
	end
end

myBeer = Drinks::Beer.new
puts myBeer
puts myBeer.kind