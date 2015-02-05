class Enemy
	attr_accessor :alive
	attr_accessor :health
	def initialize
		@alive = true
		@health = 0
	end #initialize end
end #Enemy end

class Troll < Enemy
	def initialize
		@health = 5
		super
	end
end #Troll end

class Giant < Enemy
	def initialize
		@health = 6
		super
	end
end #Giant end

class Dragon < Enemy
	def initialize
		@health = 7
		super
	end
end #Dragon end