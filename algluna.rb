print 'Hi! Enter your number card?'
number_card = gets.chomp


def is_valid_credit_card(number_card)

	number_card =  number_card.gsub(/[^\d]/, '')
	puts number_card

	if number_card.empty?
	   puts "number_card is empty"
	else
	   puts "number_card is not empty"
	end
end


is_valid_credit_card(number_card)




