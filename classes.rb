class Car

	attr_accessor :make, :color #with this line you can get rid of getter and setter methods.

	#class methods (part of my class scope)
	def self.list_models #self is a class method that can only be called direclty on the class Car, not on instance methods.
	puts self
	['1 Series', '2 Series', '3 Series']
	end

	# instance methods (part of my instance scope)
	def initialize(make, color)
		@make = make #instance variables @make. They are accesible throught the class and your objects
		@color = color
		put self.color
	end

	# # getter
	# def make
	# 	@make
	# end

	# # setter
	# def color=(new_color)
	# 	@color = new_color
	# end

	def honk
		puts "honk honk!"
	end
	
	# # def turn_left
	# # 	indicate_left #we can include methods inside each other so we don't forget the correct sequential order
	# # 	puts "#{@make} is turning left..."
	# end

	def turn(direction)
		indicate(direction)
		puts "turning #{direction}..."
	end

	def indicate(direction)
		puts "Indicating #{direction} Turn..."
	end

end

# first_car.turn_left #we can give our first car the method of either honk honk or turning left.
#to print this to the terminal, exit out of irb, go to desktop and type ruby file_name.rb



first_car = Car.new("BMW", "Black") 
first_car.turn("left")
first_car.turn("right")


second_car = Car.new("BMW", "White")

# puts first_car.turn_left --- by calling turn_left on first car it will execute the turn_left method
puts first_car.color
first_car.color = "Red"
puts "my car's new color is: #{first_car.color}"

# call these methods sequentially because that's how ruby code gets executed, from the top - down.

first_car.turn_left

# first_car is an instance method of our Car class. 




