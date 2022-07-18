print 'Hi! Enter your number card? '
numbers_card = gets.chomp

def is_valid_credit_card(numbers_card)
  numbers_card = numbers_card.gsub(/[^\d]/, '')

  if numbers_card.empty?
    puts 'number_card is empty'
  else

    sum_hash = 0
    numbers_card = numbers_card.split('').map { |n| n.to_i }

    numbers_card.each_with_index do |item, index|
      if item.even?
        val = numbers_card[index]
      else
        val = numbers_card[index] * 2
        val -= 9 if val > 9
      end
      sum_hash += val
    end
    (sum_hash % 10) == 0
  end
end

if is_valid_credit_card(numbers_card)
  puts 'the card number is valid'
else
  puts 'the card number is invalid'
end
