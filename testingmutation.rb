class List 
	attr_accessor :number_1, :number_2
	def initialize (number_1, number_2=nil) 
	@number_1 = number_1 
	@number_2 = number_2
 end 
end 

def print_values (list_number)
	if list_number 
		print "#{list_number.number_1} ->"
		if list_number.number_2.nil? 
		print "nil\n"
else 
	print print_values(list_number.number_2)

		end 
	end  


def reverse_list(list, previous =nil)

	if list 
	testing = list.number_2 
	list.number_2 = previous
	reverse_list(testing, list)

else 
	previous 
end 
end 
end 


list1 = List.new(1)
list2 = List.new(2, list1)
list3 = List.new(3, list2)

puts "new reversed stack"
print_values(reverse_list(list3))

