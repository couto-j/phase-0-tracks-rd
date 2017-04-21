#Loop to process multiple employees in a row.
continue = true
while continue
	puts "How many employees would you like to process?"
	number_employees = gets.chomp.to_i
	if number_employees > 0
		continue = false
	else
		puts "Enter a positive number, please."
	end
end
counter = 0
until counter == number_employees

# Four introductory questions.	
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year where you born?"
	birth_year = gets.chomp.to_i

	# Checking for age versus birth year

	this_year = Time.new.year
		if (this_year - birth_year) == age
			age_check = true
		else
			age_check = false
		end

	puts "Should we order some garlic bread for you?"
	bread = gets.chomp.downcase
		if bread == "yes"
			order_bread = true
		else 
			order_bread = false
		end 

	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp.downcase
		if insurance == "yes"
			buy_insurance = true
		else
			buy_insurance = false
		end

#Checking for allergies.

	puts "Do you have any allergies to list?"
	allergies = gets.chomp.downcase
	if allergies == "yes"
		add_allergies = true
		while add_allergies
			puts "Enter your allergies, one at a time. Enter 'done' when you've finished."
			allergy = gets.chomp.downcase
			if allergy == "sunshine"
			result = "Probably a vampire"
			add_allergies = false
			sunshine = true 
			elsif allergy == "done"
			add_allergies = false
			end
		end
	end


#Conditonals to check for vampires.
	if sunshine != true
		result = String.new
			if age_check && (order_bread || buy_insurance)
				result = "Probably not a vampire."
			elsif age_check == false && (order_bread == false || buy_insurance == false)
				result = "Probably a vampire."
			end
			if age_check == false && order_bread == false && buy_insurance == false
				result = "Almost certainly a vampire."
			end
			if name == "Drake Cula" or name == "Tu Fang"
				result = "Definitely a vampire."
			end
			if result == ""
				result = "Results inconclusive."
			end
		end
		puts result 
		counter +=1
		sunshine = false
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

