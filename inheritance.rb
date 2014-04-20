
class Mammal	

     def blood_type
     “warm-blooded”
     end

end

class Human < Mammal

     def can_fly
     “Noooo!”
     end

     def blood_type
     	"Humans blood type is #{super()}" 
     # super calls that same method in the parent class, 
     # gets the value which we assign to a variable called original, 
     # and we are modifying our string.

 end

class Bat < Mammal

     def can_fly
     “Hell Yeah!”
     end

end

bat = Human.new
puts john.blood_type
puts bat.blood_type

batman = Bat.new
puts batman.blood_type
puts batman.can_fly

# what happens is the class searches for the method bloo_type but doesnt 
# see it with the bats class so it goes up to Mammal since we are inheriting from it.