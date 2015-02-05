class Enemy
	attr_accessor :alive
	attr_accessor :health
	def initialize
		@alive = true
	end #initialize end
end #Enemy end

class Troll < Enemy
	def initialize
		@health = 5
	end
end #Troll end

class Giant < Enemy
	def initialize
		@health = 6
	end
end #Giant end

class Dragon < Enemy
	def initialize
		@health = 7
	end
end #Dragon end