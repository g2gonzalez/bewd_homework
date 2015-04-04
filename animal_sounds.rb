#Animal sounds program

puts "Enter an animal that makes a sound:"
# chomp -> do not display enter (newline)
# downcase -> make all user input lowercase
# strip -> remove leading and trailing whitespace
animal_name = gets.chomp.downcase.strip; 

puts "What sound does a " + animal_name + " make?"
animal_sound = gets.chomp.downcase.strip;

puts "How many times do you want the " + animal_name + " to " + animal_sound + "?";
puts "Enter 1-9 for the amount of times:"
sound_amount = gets.chomp.to_i;

loop do
	if sound_amount.to_i < 1  #check that user doesnt enter 0
		puts "You cannot choose a number less than 1!!"
		puts "Enter 1-9 for the amount of times:"
		sound_amount = gets.chomp.to_i;
	elsif sound_amount.to_i > 9 #check that user doesnt enter 10 or higher
		puts "You cannot choose a number bigger than 9!!"
		puts "Enter 1-9 for the amount of times:"
		sound_amount = gets.chomp.to_i;
	else
		break
	end
end

print "The #{animal_name} goes "; # #{This is string interpolation syntax}
	
loop do
  if sound_amount == 1 				#first check if user entered 1
  	puts "#{animal_sound}."
    break       					
  else 								#if user entered more than 1 do this
  	print "#{animal_sound}, "
  	sound_amount -= 1
  end
end

#puts "The #{animal_name} goes #{animal_sound}, #{animal_sound}, #{animal_sound}.";
