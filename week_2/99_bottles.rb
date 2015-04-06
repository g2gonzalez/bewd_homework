#99 bottles of beer on the wall

bottles = 99					#initialize the number of beers we have 

while bottles != 0				#keep looping until we hit 0
	if bottles == 1				#check if we are on our last beer to output something different
		puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall"
		break					#break from the loop once we finished our beer
	end
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
	bottles -= 1				#decrement number of beers
	puts "Take one down and pass it around, #{bottles} bottles of beer on the wall"
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."