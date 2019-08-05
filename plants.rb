class Plant 
	attr_accessor :type, :size
	def initialize (type, size) 
		@type = type 
		@size = size 
	end

	def new_plant 
		puts "We love #{@type}, that are #{@size} in size"
	end 
end 


plant = Plant.new(:pothos, :medium)
plant.new_plant 




