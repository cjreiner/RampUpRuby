puts Math.class

class NewMath
end

puts NewMath.class

test = NewMath.new
puts test.class

class NewString < String
	def self.to_i(*a)
		"Nope, not tonight son!"
	end
end

puts "12".to_i
puts NewString.to_i(12)