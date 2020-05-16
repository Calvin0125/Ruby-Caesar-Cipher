print "enter a word \n"
user_word = gets.chomp
print "enter a shift factor \n"
shift = gets.chomp
if shift.to_i < 0
    shift = shift.to_i * -1
    shift = shift % 26
    shift = shift.to_i * -1
    p shift
elsif shift.to_i > 0
    shift = shift.to_i % 26
end
p shift
user_array = user_word.split('')
char_codes = user_array.map do |letter| 
    letter = letter.ord
    if letter > 64 && letter < 91
        letter += shift
        if letter > 90
            letter -= 26
        elsif letter < 65
            letter += 26
        end
    elsif letter > 96 && letter < 123
        letter += shift
        if letter < 97
            letter += 26
        elsif letter > 122
            letter -= 26
        end
    end
    letter = letter.chr
end
puts char_codes.join('')

