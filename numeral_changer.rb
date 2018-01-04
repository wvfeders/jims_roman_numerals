print "Enter a roman numeral \n"
rnumber = gets.chomp
rnumber = rnumber.downcase
#puts rnumber
rnumber_split = rnumber.split('')
number_hash = {"m" => 1000, "d" => 500, "c" => 100, "l" => 50, "x" => 10, "v" => 5, "i" => 1}
count = rnumber_split.count
docount = count-1
total = number_hash[rnumber_split[count-1]]
docount.times do |variable|
#	puts count, number_hash[rnumber_split[count-1]]

	if number_hash[rnumber_split[count-2]] >= number_hash[rnumber_split[count - 1]]
		total = total + number_hash[rnumber_split[count-2]]
	else
		total = total - number_hash[rnumber_split[count-2]]
	end


count = count - 1	

end
puts "The arabic number equivalent is", total