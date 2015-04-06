#leap years...happen every 4 years

leap_year_exist = false				#check if any leap year records were found

puts "Welcome to the leap year checker."

puts "Enter a starting year:"
start_year = gets.chomp.to_i

puts "Enter an ending year:"
end_year = gets.chomp.to_i

#check in this loop that the ending year is an actual future year
loop do
	if end_year <= start_year
		puts "#{end_year} is not a valid year!!"
		puts "Enter a FUTURE ending year:"
		end_year = gets.chomp.to_i
	else
		break
	end
end

puts "Leap years found between #{start_year} and #{end_year} are:"

while start_year != end_year		#check start year isnt the end year
	if (start_year % 4 == 0)		#check the year can be divided by four evenly
		if (start_year % 100 != 0) || (start_year % 400 == 0)
			puts "#{start_year}"
			#counter += 1
			leap_year_exist = true
		end
	end
	
	start_year += 1  				#increment to check next year
end

#check to see if any results were found
if leap_year_exist == false
	puts "No leap years found"
end