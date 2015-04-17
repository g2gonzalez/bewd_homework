#deaf grandma

puts "Hi sonny, how are you?"

loop do
	response = gets.chomp
	random_year = rand(1930..1950)			#set random year that grandma will yell

	if response != response.upcase			#if you dont yell do this
		puts "HUH?! SPEAK UP, SONNY!"
	elsif response == 'BYE'	 				#break from the loop if you yell BYE
		puts "BYE SONNY"
		break
	else
		puts "NO, NOT SINCE #{random_year}"			#if you yell grandma will reply with nonsense
	end

	puts "(grandma is old, dont forget to yell)"
end
